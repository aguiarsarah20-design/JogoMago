# O Mago das Poções (versão simples, no estilo do Tutorial 06)

- `menu.tscn` – Menu com botões Fase 1, Fase 2, Fase 3 e Sair (cena inicial)
- `cena.tscn` – Fase 1 (3 frascos)
- `fase2.tscn` – Fase 2 (5 frascos, labirinto novo)
- `fase3.tscn` – Fase 3 (8 frascos, labirinto mais difícil)
- `player.tscn` / `player.gd` – o mago (igual ao tutorial: bateu em algo, recomeça a fase)
- `alvo.tscn` / `alvo.gd` – frasco de poção (some ao ser tocado pelo Player)
- `fase.gd` – script da raiz de cada fase: mostra quantos frascos faltam e passa para a próxima fase
- `tileset.tres` – TileSet usado pelas camadas Chao, Paredes e Decoracao

Estrutura de cada fase: Jogo > Mundo > (Chao, Paredes, Decoracao) + Alvos + Player + Interface.
Controles: setas. Esc volta ao menu.
