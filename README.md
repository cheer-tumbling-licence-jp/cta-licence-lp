# タンブリング指導ライセンス LP

一般社団法人チアタンブリング協会の指導ライセンスのランディングページ。

- **公開URL**: <https://cheer-tumbling-licence-jp.github.io/cta-licence-lp/>
- **GitHubリポジトリ**: <https://github.com/cheer-tumbling-licence-jp/cta-licence-lp>

---

## 仕組み（5行でわかる版）

1. **このフォルダ**（`LP/`）の中身がそのままウェブサイトです。
2. `index.html` を編集すると、それがサイトの内容です。
3. 変更を **GitHubに送る**と、**自動で公開URLに反映**されます。
4. 反映には1〜2分かかります。
5. 過去の状態に戻すこともできます（GitHubが履歴を保存しています）。

---

## いちばん簡単な更新方法（Claudeに頼む）

Claude Codeで「**LPの〇〇を△△に変えて公開して**」と頼むだけ。Claudeが文言修正→GitHub送信まで実行します。

例：
- 「LPのキャッチコピーを『安全な指導の証、ここに。』に変えて公開して」
- 「申込締切を5月15日に変えて公開して」
- 「ヘッダーの色をもう少し明るくして公開して」

---

## 自分で更新する方法（2つから選べる）

### A. GitHub Desktop（GUIで操作・初心者向け）

1. **GitHub Desktop** を開く（左の「Current repository」が **LP** になっていること）
2. 任意のテキストエディタで `index.html` を編集して保存
3. GitHub Desktop の左下に変更内容が表示される
4. **「Summary」欄に何を変えたか書く**（例：`受講料を更新`）
5. **「Commit to main」** ボタンをクリック
6. 上部の **「Push origin」** ボタンをクリック
7. 1〜2分後、`https://cheer-tumbling-licence-jp.github.io/cta-licence-lp/` に反映

### B. ターミナルで `publish.sh`（コマンド一発で公開）

```bash
cd /Users/don/クロードコードファイル/LP
./publish.sh "更新内容のメモ"
```

たとえば：
```bash
./publish.sh "受講料を更新"
```

---

## ファイルの場所

```
LP/
├── index.html        ← サイト本体（ここを編集）
├── README.md         ← この説明書
├── publish.sh        ← 公開スクリプト
├── .gitignore        ← Gitに含めないファイルの設定
└── assets/           ← 画像ファイル
    ├── cta-brand-logo.png   ヘッダー・フッターのCTAロゴ
    ├── cta-mark-level2.png  ヒーロー右側の認定マーク
    ├── cta-logo.png         （未使用：予備）
    └── hero-bg.png          ヒーロー背景の装飾画像
```

---

## よくある編集場所（`index.html` を開いて検索）

| 変更したいもの | 検索キーワード |
|---|---|
| キャッチコピー（一番大きい見出し） | `指導の質は、` |
| 申込フォームURL | `1FAIpQLSfAt` |
| 資料請求フォームURL | `1FAIpQLSd_By` |
| 申込締切日 | `2027.04.15` または `4月15日` |
| 受講料金額 | `29,700` `49,500` `11,000` |
| よくある質問 | `<details class="faq-item">` |
| 配色（紺・ゴールドなど） | `--navy:` `--gold:` |

色を変えるときは `index.html` 上部の `:root{` ブロックの色コード（例：`#0a2647`）を変えるだけ。

---

## 公開URLを変えたいとき

現状のURLは `/cta-licence-lp/` です。`/LP/` 部分を変えたい場合は、リポジトリ名を変更します。Claudeに「リポジトリ名を **〇〇** に変更して」と頼むか、GitHub上で `Settings → Repository name` から変更できます。

独自ドメイン（例：`license.cheer-tumbling.org`）にすることも可能です。ドメインを取得済みでしたらClaudeにご相談ください。

---

## 困ったとき

- **公開に反映されない**：1〜3分待ってからブラウザを **Cmd+Shift+R**（強制リロード）
- **間違って消した／壊した**：GitHubの履歴から戻せます。Claudeに「直前の変更を取り消して」と頼んでください
- **GitHub Desktop でエラー**：Claudeに画面のスクリーンショットを送ってください
