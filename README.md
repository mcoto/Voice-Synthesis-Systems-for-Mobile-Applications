# Comparative Analysis of Voice Synthesis Systems for Mobile Applications

This repository hosts the research, experiments, and collaborative developments aimed at evaluating and comparing **Text-to-Speech (TTS)** technologies for potential use in **child-oriented mobile applications**. The focus is on **Latin American Spanish** voices, with attention to **quality, expressiveness, latency, and mobile integration feasibility**.

The work conducted here is part of a broader initiative to promote assisted reading in childhood through mobile applications that generate and narrate texts aloud. While this repository does not implement text generation, it provides the technical groundwork for selecting and integrating suitable TTS engines in future app development.

---

## Repository Scope

The repository is designed as a **research workspace** where multiple contributors can develop features, experiments, and evaluation tools, including:

- **TTS engine evaluation pipelines** (subjective and objective metrics)
- **Audio quality analysis scripts** and perceptual testing methods
- **Latency measurement tools**
- **Integration feasibility studies** for Android and iOS environments
- **Data visualization** for results and comparisons
- **Sample datasets** and example scripts for reproducibility

---

## Features

- **Multi-engine evaluation**: Support for testing multiple TTS providers (cloud-based and local).
- **Latin American Spanish focus**: Tailored evaluation to the linguistic and cultural characteristics of the target audience.
- **Reproducible experiments**: Scripts and guidelines to replicate tests and analyses.
- **Open collaboration model**: Contributions from researchers, developers, and students in voice technology.

---

## Technologies and Tools

This repository may include work with:

- **Python-based TTS libraries**:  
  - `gTTS` (Google)  
  - `boto3` (Amazon Polly)  
  - `azure-cognitiveservices-speech` (Microsoft Azure)  
  - `coqui-tts` (Open source)  
  - API wrappers for commercial TTS services (e.g., ElevenLabs)

- **Audio analysis tools**:  
  - `pydub`  
  - `librosa`  
  - `matplotlib` / `plotly`

- **Integration testing**:  
  - SDKs for Android and iOS  
  - Scripts for measuring performance on target devices

---

## Suggested Repository Structure

```

tts-comparative-analysis/
├── datasets/             # Text scripts, audio samples, and metadata
├── src/
│   ├── evaluation/       # Quality, expressiveness, and latency evaluation scripts
│   ├── integration/      # Feasibility testing for mobile platforms
│   ├── preprocessing/    # Audio/text preparation and normalization
│   └── utils/            # Shared helper functions
├── results/              # Comparative tables, plots, and analysis outputs
├── reports/              # Technical documentation and findings
├── notebooks/            # Jupyter notebooks for exploratory analysis
├── requirements.txt      # Python dependencies
└── README.md             # Project overview (this file)

````

---

## Contribution Guidelines

We welcome contributions from voice technology experts, developers, and researchers.

1. **Fork** the repository.
2. Create a **feature branch**:
   ```bash
   git checkout -b feature/your-feature
````

3. Implement your changes.
4. Commit your work with a descriptive message:

   ```bash
   git commit -m "Added latency evaluation script for Coqui TTS"
   ```
5. **Push** your branch:

   ```bash
   git push origin feature/your-feature
   ```
6. Open a **Pull Request** clearly describing:

   * Purpose of the contribution
   * Methodology or approach
   * Results (if applicable)
   * Steps to reproduce

---

## License

This repository is maintained by the **University of Costa Rica** and is intended for **research and educational purposes only**. Any commercial application must comply with the respective TTS technology licenses.

---

## Contact

For inquiries, collaborations, or technical discussions, please contact the repository maintainer.

```
