---
layout: post
title: "Consciousness and Unambiguous Representations"
subtitle: "Thoughts and experiments about necessary physical correlates of phenomenal consciousness."
date: 2025-04-12
mode: signal
---

We are familiar with representations of all kinds. Letters represent sounds, a red light at a crossing means stop, and bit strings represent computer files. But there is nothing in a bit string itself that tells you what it is about. With one decoder it's an image, with another it's a sound. Its content depends entirely on a decoder that is defined outside of it. I call that kind of representation ambiguous, and for files that's completely fine.

When it comes to conscious brain states, I would say we're in a very different situation. If a brain state corresponds to you seeing a red square, that same brain state can't also, under some other reading, be the experience of seeing a green triangle. Nobody outside of you decides what your experience is about. So if experience is a kind of representation, it has to be one that is unambiguous on its own, without an outside decoder.

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; margin: 2rem 0;">
  <iframe src="https://www.youtube-nocookie.com/embed/RxMzAeupqaQ" title="Consciousness and Unambiguous Representations" style="position: absolute; inset: 0; width: 100%; height: 100%; border: 0;" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

So where could unambiguous content come from? The idea I explore is that a single neuron doesn't mean anything on its own, but it might get its meaning from the relations it is embedded in. A major chord works in a similar way: C, E, G and D, F sharp, A share no note, but you hear both as major, because the intervals between the notes are the same.

I tested this in two settings. In neural networks trained to classify handwritten digits, the relations between neurons are enough to tell which output neuron stands for which digit, for networks trained with dropout in every case. In mouse visual cortex, the correlations between neurons partly reveal which orientation each neuron prefers, without knowing what the mouse was looking at. They tell horizontal from vertical quite well, but barely 45 degrees from 135. That leftover ambiguity is what you'd expect from the symmetries of the structure, at least in this data.

The video is an attempt at a more polished version of an [earlier talk at Models of Consciousness 6](https://youtu.be/2BGzn22B5J8), made with heavy AI assistance: the animations were built with Claude Code, and the narration is an AI voice. The full write-up, figures and code are on the [project site](https://www.consciousness-is-unambiguous.com), and the mouse results are in the [cortex paper](https://doi.org/10.5281/zenodo.22973260).
