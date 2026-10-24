---
layout: post
title: "Consciousness and Unambiguous Representations"
subtitle: "Thoughts and experiments about necessary physical correlates of phenomenal consciousness."
date: 2025-04-12
mode: signal
---

Representations are everywhere in daily life. Letters represent sounds, words represent concepts, and bit strings represent files. But these representations are only meaningful if they are decoded in the right way. Given the right decoding algorithm, the same bit string could be an image, a sound file or a text, and there is nothing in the bit string itself that tells you what it is about. Without a decoding scheme it could represent anything. I call that kind of representation ambiguous, and for files that's completely fine.

Conscious experience is different. A brain in a given state has a determined conscious experience: if I see an apple, the same neural activity is not also representing an orange, or the sound of a passing car. And we can't rely on a decoder in the brain to give it that meaning, because a decoder only turns one encoding into another, and the question of what the new encoding is about comes back. So if experience is a kind of representation, it has to be unambiguous: the encoding itself has to carry its meaning.

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; margin: 2rem 0;">
  <iframe src="https://www.youtube-nocookie.com/embed/RxMzAeupqaQ" title="Consciousness and Unambiguous Representations" style="position: absolute; inset: 0; width: 100%; height: 100%; border: 0;" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

Where could that meaning come from? A bit string can't do it, because all it tells you is that it is this number and not another. What's needed is structure. The idea I explore is that a neuron gets its meaning from the relations it is embedded in, from how it relates to the other neurons. A major chord works in a similar way: C, E, G and D, F sharp, A share no note, but you hear both as major, because the relations between the notes are the same.

I tested this in two settings. In neural networks trained to classify MNIST digits, the connectivity of the output layer to the layer before it is enough to tell which output neuron encodes which digit, for networks trained with dropout in every case. In mouse visual cortex, the correlations between neurons alone, without the movie the mouse was watching, partly determine which orientation each neuron prefers. They tell horizontal from vertical quite well, but barely 45 degrees from 135. That remaining ambiguity is what you'd expect from the symmetries of the relational structure, at least in this data.

The video is an attempt at a more polished version of an [earlier talk at Models of Consciousness 6](https://youtu.be/2BGzn22B5J8), made with heavy AI assistance: the animations were built with Claude Code, and the narration is an AI voice. The full write-up, figures and code are on the [project site](https://www.consciousness-is-unambiguous.com), and the mouse results are in the [cortex paper](https://doi.org/10.5281/zenodo.22973260).
