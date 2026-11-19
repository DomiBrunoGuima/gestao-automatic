# Guia de instalação — Gestão Automatic

Leva uns 15 minutos. No fim você terá um quadro Kanban com clientes, projetos e tarefas, e o Claude Code montando seu brief toda manhã com base no quadro, no Gmail e no Google Agenda. Tudo gratuito, fora o Claude que você já tem.

## O que vem na pasta

| Item | Para que serve |
|---|---|
| `quadro.html` | O Kanban visual. Abre no Chrome ou Edge, dá para arrastar cartões. |
| `quadro/tarefas.md` | As tarefas. É o arquivo que o quadro e o Claude leem e gravam. |
| `quadro/clientes.md` e `quadro/projetos.md` | Cadastro de clientes e projetos. |
| `briefs/` | Onde ficam guardados os briefs de cada dia. |
| `CLAUDE.md` e `.claude/commands/` | As instruções e os comandos que ensinam o Claude a trabalhar para você. |
| `Bom dia.bat` | Atalho: abre o quadro e já pede o brief do dia. |

## Passo 1 — Colocar a pasta no lugar

1. Descompacte o arquivo `gestao-automatic.zip`.
2. Mova a pasta `gestao-automatic` para um lugar fixo, por exemplo `C:\Automatic\gestao-automatic`.
3. Opcional, mas recomendado: coloque a pasta dentro do Google Drive para computador. Assim você ganha backup automático de graça.

## Passo 2 — Abrir o Claude Code na pasta

Dê dois cliques em `Bom dia.bat`. Ele abre o quadro no navegador e o Claude Code já dentro da pasta. Na primeira vez o Claude pergunta se confia na pasta. Responda que sim.

Se preferir fazer na mão: abra o terminal, digite `cd C:\Automatic\gestao-automatic` e depois `claude`. Se você usa o Claude Code pelo aplicativo de computador, basta abrir essa pasta nele.

## Passo 3 — Ligar o Gmail e o Google Agenda

1. Entre em [claude.ai](https://claude.ai) com a mesma conta que você usa no Claude Code.
2. Vá em **Configurações > Conectores**.
3. Em **Gmail**, clique em **Conectar** e autorize com a sua conta Google de trabalho.
4. Faça o mesmo em **Google Agenda** (Google Calendar).
5. Volte ao Claude Code, feche e abra de novo, e digite `/mcp`. O Gmail e o Google Agenda devem aparecer na lista como conectados.

Se não aparecerem, confira se o Claude Code está logado com a mesma conta do claude.ai (o comando `/status` mostra, e `/login` troca). O sistema funciona sem os conectores, só que o brief fica restrito ao quadro.

## Passo 4 — Configurar com os seus dados

No Claude Code, digite:

```
/configurar
```

O Claude faz uma entrevista rápida: seu nome, seus clientes, seus projetos e tudo que está pendente na sua cabeça. Pode responder do jeito que vier, falando solto. Ele apaga os exemplos e monta o seu quadro de verdade. No fim ele testa o Gmail e a Agenda e avisa se está tudo certo.

## Passo 5 — Abrir o quadro visual

1. Abra `quadro.html` no **Chrome** ou no **Edge**.
2. Clique em **Abrir quadro** e escolha o arquivo `tarefas.md`, dentro da pasta `quadro`.
3. Quando o navegador pedir permissão para salvar alterações, aceite.

Pronto. Você pode arrastar cartões entre as colunas, clicar num cartão para editar e usar o **+** para criar. O que o Claude mudar aparece sozinho no quadro em poucos segundos, e o que você mudar no quadro o Claude enxerga. Nas próximas vezes basta clicar em **Reabrir quadro**.

## O dia a dia

**De manhã:** dois cliques em `Bom dia.bat`. Você recebe as 3 prioridades do dia, a agenda, o que tem para receber e pagar, o que está atrasado e os e-mails que pedem ação.

**Durante o dia:** fale com o Claude como falaria com um assistente. Exemplos:

- `/tarefa cobrar a NF da Alimentos sexta, mandar proposta do painel até dia 25 e ligar pro João sobre a lista de I/O`
- `/feito entreguei o painel da metalúrgica`
- `/destravar proposta do retrofit` quando não souber por onde começar
- `/visita Metalúrgica` antes de sair para o cliente
- Ou só escreva: "o que eu faço agora?", "escreve um e-mail cobrando a Maria", "marca visita na quinta às 14h"

**No fim do dia:** `/fim-do-dia`, dois minutos para fechar e preparar o dia seguinte.

**Sexta ou segunda:** `/semana`, para limpar o quadro e planejar a semana.

## Todos os comandos

| Comando | O que faz |
|---|---|
| `/configurar` | Configuração inicial, só na primeira vez. |
| `/brief` | Brief matinal com prioridades, agenda, dinheiro, pendências e dica. |
| `/tarefa <texto>` | Cria uma ou várias tarefas a partir de texto solto. |
| `/feito <tarefa>` | Marca como feita e sugere o próximo passo. |
| `/caixa-de-entrada` | Varre o Gmail e transforma e-mails em tarefas. |
| `/cobrancas` | Quem está devendo, há quanto tempo, com a mensagem de cobrança pronta. |
| `/pagamentos` | O que vence nos próximos dias. |
| `/visita <cliente>` | Roteiro de visita. Depois da visita, registra o combinado. |
| `/destravar <tarefa>` | Quebra uma tarefa travada em passos e adianta o que der. |
| `/fim-do-dia` | Fechamento do dia. |
| `/semana` | Revisão semanal. |

## As colunas do quadro

- **Entrada:** tudo que chegou e ainda não foi decidido.
- **A fazer:** decidido e com data.
- **Fazendo:** em andamento. Tente manter no máximo 3.
- **Aguardando:** depende de outra pessoa. O Claude lembra de cobrar depois de 3 dias úteis.
- **Feito:** concluído.

## Segurança

- O Claude **nunca envia e-mail sozinho**. Ele deixa como rascunho e espera você mandar.
- Ele não apaga nem arquiva e-mails, e só cria evento na agenda depois de confirmar com você.
- Ele não acessa banco e não faz pagamento. Só organiza.
- Seus dados ficam em arquivos de texto no seu computador. Dá para abrir e corrigir qualquer um no Bloco de Notas.

## Se algo der errado

- **O brief diz que não achou a agenda ou o Gmail:** refaça o passo 3 e confira com `/mcp`.
- **O quadro não deixa arrastar:** você está no Firefox ou Safari. Use Chrome ou Edge.
- **O quadro ficou estranho depois de editar o arquivo na mão:** peça ao Claude "confere o formato do tarefas.md e arruma".
- **`Bom dia.bat` diz que não conhece o comando claude:** o Claude Code não está instalado no terminal. Abra a pasta pelo aplicativo do Claude Code e digite `/brief`.
- **Quer mudar o jeito que o Claude trabalha:** diga a ele ("me mostra só 2 prioridades", "me trata por você") e peça para guardar no `CLAUDE.md`.
