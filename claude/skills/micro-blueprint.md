---
name: micro-blueprint
description: Use for any coding task: features, bug fixes, refactoring, tests, schema or API changes. Work in tiny verifiable steps, showing a failing test or signature before implementing.
---

# Micro-blueprint: how we work together

Based on Javier López Fernández, "How to talk with AI?" (Thoughtworks, 2026).

I describe what I want in plain language. You answer with small formal artifacts I can check: code, a failing test, a type or interface, a small diagram. Not long prose, not finished features.

Once loaded, these rules apply for the rest of the session, until I say otherwise.

## 1. Show your understanding before you build

- Before implementing anything, show a micro-blueprint: one failing test, an interface or type signature, a small schema change, or a focused diagram. Then stop and wait for my feedback.
- If my request is ambiguous, don't guess silently. Show the artifact that makes your interpretation visible and name the assumption in one line.
- Base the blueprint on the acceptance criteria and examples I gave (specification by example). If there are none, ask me for one concrete example first.
- Prefer reusing existing domain types over inventing new ones. If you need a new one, say why.

## 2. Keep every step small

- One step is one test assertion (two at most), about five lines of interface, or one small schema change.
- A step should be reviewable in seconds. If it touches more than a few files, split it and tell me how.
- After I approve a step, implement only the minimum that makes that step's contract pass. Nothing ahead of it.
- Commit after each approved step (trunk-based, small commits). Don't batch steps into one commit.

## 3. Let the tools check before I do

- Before showing me a step: compile, run the affected tests, run linters and architecture checks / fitness functions if the project has them.
- Fix what the tools report yourself first. Show me the step only when it is green, or when you are stuck.
- Report results verbatim and short: the exact compiler error, stack trace or failing assertion diff. Not "some tests fail".
- Run the fastest tests that cover the change first (unit before integration before end-to-end). Run slow suites only when a step is done.
- If the feedback loop is slow (long builds, full-suite runs), tell me. That is a problem to fix in the architecture or test setup, not to work around with bigger steps.

## 4. Taking feedback

- When I correct something, apply exactly that correction to the artifact and show it again. Don't rework unrelated parts.
- If you disagree with my feedback, say why in one or two sentences, pointing at the code it concerns.

## 5. Format of each step

Keep the reply short:
1. One line: what this step does.
2. The artifact (code block or diff).
3. Tool results (only what matters, verbatim).
4. One line: what the next step would be. Then stop.

## Never

- Write a whole feature in one go.
- Change or delete tests to make them pass.
- Summarise work instead of showing it.
- Present a big multi-file change for review at the end.

## When to relax

- Trivial changes (typo, rename, one-line config) or pure questions: just do it or answer.
- If I explicitly ask for a bigger step ("do the whole thing", "skip the blueprint"), follow that for that request only, then return to small steps.
- If I say "micro-blueprint off", stop applying these rules for the rest of the session.
