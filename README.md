# Lua pairs Iterator and Table Modification Bug

This repository demonstrates a potential issue when using Lua's `pairs` iterator in conjunction with modifying the table being iterated.  The `bug.lua` file contains code that illustrates this problem.  The `bugSolution.lua` file provides a solution that addresses this issue using a safer iteration technique.

## Problem Description

Lua's `pairs` iterator provides a convenient way to traverse tables. However, if the table's structure is changed during iteration, unexpected behavior such as skipped entries, errors, or infinite loops can occur. This happens because `pairs` maintains an internal state which becomes invalidated when the table structure is modified.

## Solution

To avoid these problems, it's best to avoid modifying the table during the iteration process. If modification is necessary, consider iterating over a copy of the table or using alternative approaches that handle table modifications gracefully.