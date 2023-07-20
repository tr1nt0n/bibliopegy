ServerOptions.devices;

(
s.options.inDevice("Built-in Microph");
s.options.outDevice("Built-in Output");
//s.boot;
// s.meter;
)

// test

(
x = {
	var sig;
	sig = SoundIn.ar(0!2);
	sig = GrainIn.ar(1, Dust.ar(20), 0.08, sig);
}.play
)


// 一 processing


// synth


(

SynthDef.new(
	\slashes,
	{
		arg hardwareInput, inputGain=1, outputBus, amp=0, sawFrequencyMultiplier=exprand(7, 13), modulationFrequencyMultiplier=exprand(7, 13), subEnvGate=exprand(2, 10);
		var trackedSignal, frequency, envelope, subEnvelope, convolutionInput, convolutionKernel, synthSignal;

		trackedSignal = SoundIn.ar(hardwareInput, inputGain);
		frequency = Pitch.kr(in:trackedSignal, initFreq:433, minFreq: 220, execFreq: 1, clar:1);
		frequency = GrainSin.ar(
			numChannels: 2,
			trigger: Dust.kr(0.5),
			dur: 1,
			freq: frequency,
		);
		frequency = Pitch.kr(in:frequency, initFreq:433, minFreq: 220, maxFreq: 1760, execFreq: 1, clar:1);

		envelope = Amplitude.kr(trackedSignal, attackTime: 10, releaseTime: 20);

		subEnvelope = EnvGen.kr(
			Env(
				levels: [0, 0.3, 0.001],
				times: [1.5, 0.25, 0.3],
				curve: 8,
			),
			gate: Impulse.kr(envelope * subEnvGate),
			doneAction: 0,
		);

		convolutionInput = PMOsc.ar(
			carfreq: SinOsc.ar(frequency),
			modfreq: frequency * (modulationFrequencyMultiplier / 4),
			pmindex: 0.4,
			modphase: 1,
			mul: 2.5
		);

		convolutionKernel = SyncSaw.ar(
			syncFreq: frequency * modulationFrequencyMultiplier/8,
			sawFreq: frequency * sawFrequencyMultiplier,
		);

		synthSignal = Convolution.ar(
			in: convolutionInput,
			kernel: convolutionKernel,
			framesize: 1024,
			mul: 1/9
		);

		synthSignal = synthSignal * subEnvelope;

		synthSignal = synthSignal * envelope;

		synthSignal = Limiter.ar(
			in: FreeVerb.ar(
				in: synthSignal,
				mix: 1,
				room:0.7,
				damp:0,
			),
			level: 0.5,
			dur: 0.01,
		);

		Out.ar(outputBus, synthSignal);
	}
).add;

)

// collection


(

5.collect({
	arg n;
	Synth(\slashes, [
		\hardwareInput,
		0,
		\outputBus,
		0,
		amp: 0.3,
		sawFrequencyMultiplier:exprand(7, 13),
		modulationFrequencyMultiplier:exprand(7, 13),
		subEnvGate:exprand(2, 10);
	]);
});

)

// 二 processing

(

SynthDef.new(
	\blocks,
	{
		arg outputBus, envelopeLength, superfluousBullshit;
		var buffer, signal, envelope, out;

		buffer = Buffer.readChannel(s, "/Users/trintonprater/scores/bibliopegy/bibliopegy/sc/二_sample.wav", channels:[0],);

		signal = GrainBuf.ar(
			numChannels: 2,
			trigger: Dust.ar({ExpRand(10, 30)}!12),
			dur: Logistic.ar(
				chaosParam:3.72,
				freq:10,
			).range(0.5, 1),
			sndbuf: b,
			rate: Logistic.ar(
				chaosParam:3.59,
				freq: 10,
			).range(0.02, 1.2),
			pos: Logistic.ar(
				chaosParam:3.57,
			).range(0, 1),
			interp: 2,
		);

		envelope = EnvGen.kr(
			Env(
				levels: [0, 1, 1, 0],
				times: [0.1, IRand(1, 7), 0.1],
				curve: 8,
			),
			doneAction: 2,
			gate: Impulse.kr(superfluousBullshit),
		);

		out = Limiter.ar(
			in: FreeVerb.ar(
				in: signal,
				mix: 0.8,
				room:0.6,
				damp:0.6,
			),
			level: 0.5,
			dur: 0.01,
		);

		out = out * envelope;

		Out.ar(outputBus, out);

}).add;

)


(

Synth(
	\blocks, [
		\outputBus,
		superfluousBullshit:0.5,
	],
);

)

// 三 processing

// allocate a buffer

b = Buffer.alloc(s, s.sampleRate * 5, 1);

// two single channel audio busses

(
~micBus = Bus.audio(s, 1);
~ptrBus = Bus.audio(s, 1);
)


// Synthdefs

(
SynthDef.new(\mic, {
	arg in=0, out=0, amp=1;
	var sig;
	sig = SoundIn.ar(in) * amp;
	Out.ar(out, sig);
}).add;

SynthDef.new(\ptr, {
	arg out=0, buf=0;
	var sig;
	sig = Phasor.ar(0, BufRateScale.kr(buf), 0, BufFrames.kr(buf));
	Out.ar(out, sig);
}).add;

SynthDef.new(\rec, {
	arg ptrIn=0, micIn=0, buf=0;
	var ptr, sig;
	ptr = In.ar(ptrIn, 1);
	sig = In.ar(micIn, 1);
	BufWr.ar(sig, buf, ptr);
}).add;

SynthDef.new(\gran, {
	arg amp=0, out=0,
	atk=1, rel=1, gate=1,
	sync=1, dens=40,
	baseDur=0.05, durRand=1,
	rate=1, rateRand=1,
	pan=0, panRand=0,
	grainEnv=(-1), ptrBus=0, ptrSampleDelay=20000, ptrRandSamples=5000, minPtrDelay=1000;

	var sig, env, densCtrl, durCtrl, rateCtrl, panCtrl, ptr, ptrRand, totalDelay, maxGrainDur;

	env = EnvGen.kr(Env.asr(atk,1,rel), gate, doneAction:2);
	densCtrl = Select.ar(sync, [Dust.ar(dens), Impulse.ar(dens)]);
	durCtrl = baseDur * Logistic.ar(4, freq: 20000, init:0.7).exprange(1/durRand,durRand);
	rateCtrl = rate * Logistic.ar(4, freq:20000, init:0.7).exprange(1/rateRand, rateRand);
	panCtrl = pan + LFNoise1.kr(100).bipolar(panRand);

	ptrRand = LFNoise1.ar(100).bipolar(ptrRandSamples);
	totalDelay = max(ptrSampleDelay - ptrRand, minPtrDelay);

	ptr = In.ar(ptrBus, 1);
	ptr = ptr - totalDelay;
	ptr = ptr / BufFrames.kr(b);

	maxGrainDur = (totalDelay / rateCtrl) / SampleRate.ir;
	durCtrl = min(durCtrl, maxGrainDur);

	sig = GrainBuf.ar(
		2,
		densCtrl,
		durCtrl,
		b,
		rateCtrl,
		ptr,
		2,
		panCtrl,
		grainEnv,
	);

	sig = sig * env * amp;
	Out.ar(out, sig);
}).add;
)

// write synths to server

(
~micGrp = Group.new;
~ptrGrp = Group.after(~micGrp);
~recGrp = Group.after(~ptrGrp);
~granGrp = Group.after(~recGrp);
)

(
b.zero;
Synth(\mic, [\in, 0, \out, ~micBus], ~micGrp);
Synth(\ptr, [\buf, b, \out, ~ptrBus], ~ptrGrp);
Synth(\rec, [\ptrIn, ~ptrBus, \micIn, ~micBus, \buf, b], ~recGrp);
~g = 5.collect({
	arg n;
	Synth(\gran, [
	\amp, 0.15,
	\buf, b,
	\out, 0,
	\atk, 1,
	\rel, 1,
	\gate, 1,
	\sync, 1,
	\dens, exprand(2, 100),
	\baseDr, 0.8,
	\durRand, 100,
	\rate, 1,
	\rateRand, 9/8,
	\pan, 0,
	\panRand, 0,
	\grainEnv, -1,
	\ptrBus, ~ptrBus,
	\ptrSampleDelay, n.linlin(0,4,20000,s.sampleRate*2),
	\ptrRandSamples, 10000,
	\minPtrDelay, 1000,
], ~granGrp);
});
)

~g.set(\gate, 0);
~g.do({ arg n; n.set(\gate, 0) });

// 四 processing

// synth


(
SynthDef.new(
	\slashes,
	{
		arg hardwareInput, inputGain=1, outputBus, amp=0, sawFrequencyMultiplier=exprand(7, 13), modulationFrequencyMultiplier=exprand(7, 13);
		var trackedSignal, frequency, envelope, subEnvelope, convolutionInput, convolutionKernel, synthSignal;

		trackedSignal = SoundIn.ar(hardwareInput, inputGain);
		frequency = Pitch.kr(in:trackedSignal, initFreq:433, minFreq: 220, execFreq: 0.01, clar:1);
		envelope = Amplitude.kr(trackedSignal);

		subEnvelope = EnvGen.kr(
			Env(
				levels: [0, 0.3, 0],
				times: [1, 0.1, 0.2],
				curve: 7,
			),
			gate: Dust2.kr(3),
			doneAction: 0,
		);

		convolutionInput = PMOsc.ar(
			carfreq: SinOsc.ar(frequency),
			modfreq: frequency * (modulationFrequencyMultiplier / 4),
			pmindex: 0.4,
			modphase: 1,
			mul: 2.5
		);

		convolutionKernel = SyncSaw.ar(
			syncFreq: Logistic.ar(
				chaosParam: 3.58,
				freq: (envelope * frequency) * (1 - frequency),
				init: envelope / 10,
			),
			sawFreq: frequency * sawFrequencyMultiplier,
		);

		synthSignal = Convolution.ar(
			in: convolutionInput,
			kernel: convolutionKernel,
			framesize: 1024,
			mul: 1/9
		);

		synthSignal = synthSignal * subEnvelope;

		synthSignal = synthSignal * envelope;

		synthSignal = Limiter.ar(
			in: synthSignal,
			level: 0.5,
			dur: 0.01,
		);

		Out.ar(outputBus, synthSignal);
	}
).add;

)

// collection


(

5.collect({
	arg n;
	Synth(\slashes, [
		\hardwareInput,
		0,
		\outputBus,
		0,
		amp: 0.15,
		sawFrequencyMultiplier:exprand(7, 13),
		modulationFrequencyMultiplier:exprand(7, 13),
	]);
});

)














