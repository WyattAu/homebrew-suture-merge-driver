# homebrew-suture-merge-driver

Homebrew tap for [Suture](https://github.com/WyattAu/suture) — a universal semantic merge driver that resolves Git merge conflicts automatically for 17+ file formats.

## Install

```bash
brew tap WyattAu/suture-merge-driver
brew install suture-merge-driver
```

## Usage

```bash
# Configure as a Git merge driver
suture driver install

# Or use standalone
suture merge-file --base base.yml --ours ours.yml --theirs theirs.yml
```

## Supported Formats

JSON, YAML, TOML, XML, CSV, SQL, Markdown, DOCX, XLSX, PPTX, and more.

## Links

- [Documentation](https://wyattau.github.io/suture/)
- [GitHub](https://github.com/WyattAu/suture)
- [Report Issues](https://github.com/WyattAu/suture/issues)
