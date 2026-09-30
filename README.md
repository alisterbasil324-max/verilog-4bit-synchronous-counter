# 4-bit Synchronous Up/Down Counter

A SystemVerilog implementation of a 4-bit synchronous up/down counter with reset and enable control.

## Overview

This project implements a synchronous 4-bit counter using SystemVerilog.

The counter can:

- Count upward
- Count downward
- Be enabled or disabled
- Reset synchronously
- Operate on the rising edge of the clock

## Inputs and Outputs

| Signal | Direction | Description |
|---|---|---|
| `clk` | Input | Clock signal |
| `rst` | Input | Synchronous reset |
| `en` | Input | Counter enable |
| `up_down` | Input | `1` for up, `0` for down |
| `count[3:0]` | Output | 4-bit counter value |

## Design

The counter uses a synchronous sequential block triggered by the rising edge of `clk`.

### Counting Up

When:

```text
en = 1
up_down = 1
