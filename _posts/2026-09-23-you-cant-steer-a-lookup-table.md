---
layout: post
title: "You Can't Steer a Lookup Table"
subtitle: "Interventional inference and Hoel's disproof of LLM consciousness"
date: 2026-09-23
mode: signal
---

Erik Hoel's ["A Disproof of Large Language Model Consciousness"](https://arxiv.org/html/2512.12802v3#S2) argues from what a scientific theory of consciousness must be: falsifiable and non-trivial. Theories are tested by comparing their predictions, made from a system's internals, with inferences drawn from its behavior. For an LLM, Hoel constructs a chain of systems with identical input/output behavior: the LLM, a single-layer network, and finally a lookup table. A theory that calls the LLM conscious but not the table changes its verdict while the evidence stays the same, and is falsified. A theory that calls both conscious is judging by behavior alone, and is trivial. Either way, no scientific theory can credit LLMs with consciousness, while humans escape the trap, he argues, because they learn continually.

This rests on a key assumption, stated in step 1 of the proof of Proposition 4.8 with only brief justification, none of which addresses interventional evidence:

> "Since empirical inferences about consciousness for entities like LLMs are derived from I/O functions (not from, e.g., how many layers they possess), all inference data is fixed across the chain."

But inference in consciousness science does not have to be constrained to I/O. It can also perturb mechanisms and observe how reports change (TMS, lesions). Such evidence is still report-based, so it doesn't make theories trivial, yet it is sensitive to the mechanism. Nor does it presuppose a theory of consciousness: in LLMs, steering directions and ablation targets are found by methods agnostic to any theory of consciousness, and the resulting changes in report are observed, not predicted. This does not undermine the "universality" Hoel wants from inferences: the procedure (perturb internal variables, observe changes in report) applies to any system, even if its targets differ, just as I/O-based tests use different stimuli for humans and LLMs.

Under interventional inference, the lookup table is no longer a valid substitute. Any system that reproduces every intervention–report pattern must implement the LLM's causal structure, even if in different parts, and a lookup table has nothing inside that corresponds to the LLM's components. Nor does a table keyed on (input, intervention) pairs help: there the "intervention" is just an extra input naming the LLM's components, not a perturbation of the table itself, and by the reasoning of Hoel's own Corollary 5.5(a), a substitute whose input must expand to "another kind of data" fails to substitute. Hoel's chain of I/O-equivalent substitutes (LLM → single-layer network → lookup table) therefore no longer holds the evidence fixed, and the disproof does not go through.
