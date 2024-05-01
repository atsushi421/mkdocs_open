---
hide:
- navigation
- toc
---

# Inbox

## [Power Management Strategies](https://www.kernel.org/doc/html/v6.6/admin-guide/pm/strategies.html)

Linuxカーネルは、以下2つの主要な高レベル電力管理戦略をサポートしている。

- **System-Wide Power Management**: ユーザ空間のコードが実行できず、システム全体の活動が大幅に低下する、システム全体のグローバルな低電力状態を使用する電力管理戦略

- **Working-State Power Management**: Working-Stateにおいて、必要に応じてシステムの個々のハードウェアコンポーネントの電力状態を調整する電力管理戦略

2つの電源管理戦略は、シナリオによって使い分けるべきである。すなわち、ユーザが、ラップトップの蓋を閉めるなどした場合、System-Wide Power Managementを使用するべきである。一方、ユーザがノートパソコンのキーボードから離れるだけであれば、Working-State Power Managementを使用すべきである。

!!! note
    本資料ではSystem-Wide Power Managementの説明は省略する。知りたい方は[こちら](https://www.kernel.org/doc/html/latest/admin-guide/pm/system-wide.html)参照。

## [Working-State Power Management](https://www.kernel.org/doc/html/latest/admin-guide/pm/working-state.html)

