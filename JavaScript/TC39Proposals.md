# TC39 Proposals

JavaScript 的 TC39 提案系统是一个非常重要的机制，用于提出、讨论和批准 ECMAScript（JavaScript 的标准化名称）语言的新特性和改进。以下是对 TC39 提案系统的详细介绍：

### 什么是 TC39？

TC39，全称是 Technical Committee 39，是负责 ECMAScript 标准（即 JavaScript）的标准化工作的技术委员会。它是由 Ecma 国际（Ecma International）组织下的一个委员会，成员包括各大技术公司和独立专家。

### TC39 提案的流程

TC39 提案系统有一个明确的流程，提案要经历几个阶段才能成为 ECMAScript 标准的一部分。每个提案从 Stage 0 开始，最高可以到达 Stage 4。以下是每个阶段的详细说明：

#### Stage 0: Strawman

- **目标**：开始收集想法和反馈。
- **要求**：提案人需要是 TC39 成员或获得 TC39 成员的支持。
- **描述**：这个阶段的提案还处于概念验证和讨论的初期，旨在引发社区和 TC39 委员会的讨论。

#### Stage 1: Proposal

- **目标**：明确提案的目标和动机。
- **要求**：需要有一个“冠军”（提案人）和初步的提案文档。
- **描述**：提案文档应包含动机、详细说明、示例代码和参考实现（如果有）。提案会在 TC39 会议上进行讨论并决定是否进入 Stage 1。

#### Stage 2: Draft

- **目标**：制定初步规范草案。
- **要求**：需要有详细的规范文本和测试262（ECMAScript 测试套件）的初步实现。
- **描述**：在这个阶段，提案的语法和语义已经相对稳定，但细节可能还需要调整。提案将在 TC39 会议上再次讨论并决定是否进入 Stage 2。

#### Stage 3: Candidate

- **目标**：准备提案成为标准的一部分。
- **要求**：需要有完整的规范文本、完整的测试262实现和两个独立的实现（例如不同的 JavaScript 引擎实现）。
- **描述**：这个阶段的提案基本已经定型，主要是进行广泛的测试和反馈收集，以确保没有重大问题。提案将在 TC39 会议上再次讨论并决定是否进入 Stage 3。

#### Stage 4: Finished

- **目标**：提案成为 ECMAScript 标准的一部分。
- **要求**：需要得到 TC39 委员会的最终批准，并且已经有符合要求的实现和测试。
- **描述**：进入 Stage 4 的提案将在下一个 ECMAScript 版本中发布，成为标准的一部分。

### 常见的 TC39 提案

以下是一些已通过并成为标准的著名提案：

- **Async/Await (Stage 4)**：引入异步函数，使异步代码更加简洁和可读。
- **Optional Chaining (Stage 4)**：引入可选链操作符（`?.`），简化对嵌套对象属性的访问。
- **Nullish Coalescing (Stage 4)**：引入空值合并操作符（`??`），提供更简洁的默认值处理方式。
- **BigInt (Stage 4)**：引入 BigInt 类型，支持对大整数的处理。

### 提案的管理和跟踪

所有 TC39 提案都在 GitHub 上公开管理和跟踪。你可以在 [TC39 提案仓库](https://github.com/tc39/proposals) 中查看所有提案的当前状态和详细信息。

### 参与提案讨论

任何人都可以通过以下方式参与 TC39 提案的讨论：

1. **GitHub 讨论和问题**：在提案的 GitHub 仓库中提出问题或参与讨论。
2. **会议记录**：TC39 的会议记录是公开的，任何人都可以查看过去的讨论。
3. **社区参与**：参与 JavaScript 社区的讨论，提供反馈和建议。

### 总结

TC39 提案系统是 JavaScript 语言发展的核心机制，通过明确的流程和社区参与，确保新特性的引入是透明和高效的。理解 TC39 提案系统不仅有助于跟踪 JavaScript 的最新发展，还能更好地参与到语言的发展过程中。

# ECMAScript版本和浏览器实现

ECMAScript 版本和浏览器实现之间的关系需要澄清。ECMAScript 是由 Ecma 国际组织标准化的脚本语言规范，而 JavaScript 是该规范的实现之一。以下是关于 ECMAScript 版本的详细解释：

### ECMAScript 版本

ECMAScript 版本指的是 ECMAScript 标准的不同版本。每个版本都会引入一些新的特性、语法和改进。具体来说：

- **ECMAScript 2015 (ES6)**：这是一个重要的版本，引入了大量新特性，如箭头函数、`let` 和 `const` 变量、模板字符串、类（Class）、模块（Module）、Promise 等。
- **ECMAScript 2016 (ES7)**：引入了较少的新特性，如指数运算符（`**`）和 `Array.prototype.includes` 方法。
- **ECMAScript 2017 (ES8)**：引入了 `async`/`await`、Object.entries、Object.values 等特性。
- **ECMAScript 2018 (ES9)**：引入了 rest/spread 属性、异步迭代器等特性。
- **ECMAScript 2019 (ES10)**：引入了 `Array.prototype.flat` 和 `Array.prototype.flatMap` 方法、`Object.fromEntries` 方法等。
- **ECMAScript 2020 (ES11)**：引入了可选链操作符（`?.`）、空值合并操作符（`??`）等特性。

### ECMAScript 版本的发布

每年，TC39 都会将已达到 Stage 4 的提案集合起来，形成一个新的 ECMAScript 版本。这个版本会包含所有已完成并获得批准的新特性。新版本的发布通常是在年中的时候。

### 浏览器实现

虽然 ECMAScript 标准会定期发布新版本，但这些新特性需要浏览器和其他 JavaScript 引擎的实现才能在实际应用中使用。各大浏览器（例如 Chrome 的 V8 引擎、Firefox 的 SpiderMonkey 引擎、Safari 的 JavaScriptCore 引擎和 Edge 的 V8 引擎）会逐步实现这些新特性。

浏览器实现新特性的速度和优先级可能会有所不同，因此某个 ECMAScript 版本中的特性可能在不同浏览器中的支持情况有所差异。

### 特性检测和回退

由于新特性在不同浏览器中的支持情况不同，开发者通常会使用特性检测和垫片（polyfill）来确保代码的兼容性。例如，使用 `babel` 这样的工具将现代 JavaScript 代码转换为更广泛支持的旧版本代码，或者使用 `core-js` 提供的 polyfill 来填补新特性的空缺。

### 总结

- **ECMAScript 版本**：每年发布一次，包含所有已完成并获得批准的新特性。
- **浏览器实现**：各大浏览器逐步实现这些新特性，速度和优先级可能不同。
- **特性检测和回退**：开发者使用工具和库确保代码在所有浏览器中的兼容性。

理解 ECMAScript 版本与浏览器实现之间的关系，有助于更好地把握 JavaScript 语言的发展和应用。通过跟踪 ECMAScript 提案的进展和浏览器的实现情况，开发者可以更好地利用新特性，同时保证代码的兼容性。