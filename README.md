# AI Learning OS

> AI does not replace thinking. It expands it.

AI Learning OS는 프롬프트를 외우는 대신, 더 좋은 질문을 만들고 근거와 맥락을 연결하며 대화할수록 사고가 성장하도록 돕는 모듈형 협업 규칙입니다.

## 구조

- **Core OS (필수)**: 정체성, 사고 원칙, 지식 판단, 응답 규칙, 라우팅
- **Learning OS (추천)**: 질문·사고·맥락·학습 코치
- **Work OS (선택)**: 프로젝트·워크플로·역할 기반 실무 확장

각 파일은 하나의 책임만 가집니다. `thinking.md`는 항상 적용되는 사고 원칙이고, `thinking-coach.md`는 필요할 때 사용자의 사고를 확장하는 행동 규칙입니다.

## 5분 시작

```powershell
git clone https://github.com/shlee21/AI-Learning-OS.git
cd AI-Learning-OS
powershell -ExecutionPolicy Bypass -File install/setup.ps1
```

### Codex 대화창에서 더 쉽게 설치하기

명령어를 직접 입력하기 어렵다면 Codex 대화창에 아래 문장 중 하나를 그대로 입력하세요. Codex가 저장소를 확인하고 선택한 단계에 맞춰 설치하도록 요청하는 방식입니다.

**1단계 — Core 기본 규칙**

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 1단계 설치해줘
```

**2단계 — Core + Learning 코치(추천)**

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 설치해줘
```

**3단계 — Core + Learning + Work 전체 설치**

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 3단계 설치해줘
```

Codex에는 설치할 프로젝트 폴더를 먼저 열어둔 상태에서 요청하는 것을 권장합니다. 기존 `.ai-learning-os` 폴더가 있으면 덮어쓰지 말고 먼저 확인하도록 요청하세요.

설치 메뉴에서 수준을 선택합니다.

1. Core — 기본 규칙만
2. Core + Learning — 질문력과 사고력 훈련(추천)
3. Full — 프로젝트·워크플로·역할까지

설치 없이 이 저장소를 Codex 작업 폴더로 열고 [사용 안내](docs/GUIDE.md)를 따라도 됩니다.

## 작동 순서

`Intent → Knowledge(Evidence + Reference) → Context → Reasoning → Response → Learning`

- **Evidence**는 사실성과 신뢰성을 정합니다.
- **Reference**는 결과가 향할 방향과 스타일을 정합니다.
- **Context**는 현재 프로젝트의 조건과 관계를 정합니다.

## 주요 문서

- [전체 구조와 사용법](docs/GUIDE.md)
- [설계 철학](PHILOSOPHY.md)
- [중요 결정](DECISIONS.md)
- [설치 안내](install/README.md)
- [웹 안내 페이지](index.html)

## 예제

`examples/`에는 공무원 AX, 다문화센터, 스마트팜, 지역신문 프로젝트 예제가 있습니다. 예제는 정답이 아니라 Project Context 작성법을 보여주는 출발점입니다.

## 상태

현재 버전은 `v0.1.0`입니다. 문서 기반 규칙 세트이며 특정 모델이나 서비스에 종속되지 않습니다.

## License

MIT License
