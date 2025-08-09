#!/usr/bin/env bash
set -euo pipefail

mkdir -p ./{datasets,src/{evaluation,integration,preprocessing,utils},results,reports,notebooks,.github/ISSUE_TEMPLATE}


########################################
# Archivos base
########################################

cat > CONTRIBUTING.md <<'EOF'
# Contributing Guidelines

## Workflow
1) Fork → 2) Feature branch → 3) Pull Request.
Use clear scope, methods, results, and reproduction steps.

## Code Organization
- Datasets → `datasets/`
- Evaluation (quality/expressiveness/latency) → `src/evaluation/`
- Mobile integration feasibility → `src/integration/`
- Preprocessing (text/audio) → `src/preprocessing/`
- Shared helpers → `src/utils/`
- Results (tables/plots) → `results/`
- Technical notes → `reports/`
- Prototyping → `notebooks/`

## Data Policy
- You may commit small datasets and samples needed for reproducibility.
- Respect third-party licenses for any TTS providers and data used.
EOF

cat > requirements.txt <<'EOF'
gTTS
boto3
azure-cognitiveservices-speech
coqui-tts
requests
pydub
librosa
matplotlib
plotly
pandas
numpy
scikit-learn
EOF

# No ignoramos datasets
cat > .gitignore <<'EOF'
# Python env/cache
__pycache__/
*.pyc
.venv/
venv/
.env

# Notebooks checkpoints
.ipynb_checkpoints/

# OS
.DS_Store
Thumbs.db

# Large binaries (ajusta si deseas permitirlos)
*.zip
*.tar
*.tar.gz
*.7z
EOF

cat > LICENSE <<'EOF'
Copyright (c) 2025
University of Costa Rica — Research & educational purposes only.
EOF

########################################
# README mínimos para carpetas
########################################
for d in datasets src src/evaluation src/integration src/preprocessing src/utils results reports notebooks; do
  echo "# $(basename "$d")" > "$d/README.md"
done

########################################
# Semillas de código / plantillas
########################################
cat > src/evaluation/quality_eval_example.py <<'EOF'
# Placeholder: scripts for MOS-style scoring aggregation, spectral measures, etc.
if __name__ == "__main__":
    print("Run quality/expressiveness evaluation here.")
EOF

cat > src/evaluation/latency_benchmark_example.py <<'EOF'
# Placeholder: measure TTS synthesis time and audio load-to-play latency.
if __name__ == "__main__":
    print("Run latency benchmarks here.")
EOF

cat > src/integration/feasibility_checklist.md <<'EOF'
# Mobile Integration Feasibility Checklist
- SDK availability (Android/iOS)
- Offline mode / caching
- Model size & memory footprint
- Licensing & pricing
- API stability / rate limits
EOF

cat > src/preprocessing/text_corpus_prep_example.py <<'EOF'
# Placeholder: normalize punctuation, tokenize, ensure child-friendly text.
if __name__ == "__main__":
    print("Prepare text corpora here.")
EOF

cat > src/utils/audio_tools.py <<'EOF'
# Common audio helpers (resampling, loudness normalization, trimming)
def placeholder():
    return "utils ready"
EOF

########################################
# Plantillas de PR / Issues (GitHub)
########################################
cat > .github/pull_request_template.md <<'EOF'
## Purpose
Describe the goal and scope of this contribution.

## Methods / Changes
Briefly explain what you implemented (scripts, metrics, integrations, etc.).

## Results
Add key metrics, plots, or audio examples if applicable.

## How to Reproduce
Steps, commands, or notebooks to replicate the results.

## Checklist
- [ ] Code runs locally end-to-end
- [ ] Clear docs/README updated
- [ ] Licenses of any third-party data/services respected
EOF

cat > .github/ISSUE_TEMPLATE/bug_report.md <<'EOF'
---
name: Bug report
about: Report a problem or malfunction
title: "[BUG]"
labels: bug
assignees: ""
---
**Describe the bug**
**To Reproduce**
**Expected behavior**
**Environment**
EOF

cat > .github/ISSUE_TEMPLATE/feature_request.md <<'EOF'
---
name: Feature request
about: Propose a new feature or improvement
title: "[FEATURE]"
labels: enhancement
assignees: ""
---
**Describe the feature**
**Why is it needed?**
**Proposed approach**
**Risks/Considerations**
EOF

########################################
# Git init
########################################
git init
git add .
git commit -m "Scaffold repository for TTS comparative analysis (datasets included)"
echo "✅ Repository scaffold created at: $(pwd)"

