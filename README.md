# AI Learning OS

> AI does not replace thinking. It expands it.

AI Learning OS는 프롬프트를 외우는 대신, 더 좋은 질문을 만들고 근거와 맥락을 연결하며 대화할수록 사고가 성장하도록 돕는 모듈형 협업 규칙입니다.

**공식 별칭은 `ALO`**입니다. GitHub 주소로 글로벌 설치한 뒤에는 어느 프로젝트에서든 `ALO 상태 확인`, `ALO 업데이트`처럼 자연어로 부를 수 있습니다. 별도의 글로벌 Skill은 설치하지 않으며, 글로벌 `AGENTS.md`가 `ALO`와 AI Learning OS를 같은 시스템으로 인식하도록 연결합니다.

## 먼저 작은 실험으로 체감해 보세요

AI Learning OS 전체를 설치하기 전에 **개인 맞춤설정의 효과를 체험하는 선택형 실험**부터 해볼 수 있습니다. 맞춤형 지침에 다음과 같은 작은 규칙을 넣고, 적용 전후에 같은 질문을 비교해 보세요.

- 한국어와 Markdown으로 내용을 명확하게 구성하기
- 사실·추론·의견·불확실성을 구분하기
- Evidence와 Reference를 구별해 표시하기
- 사용자의 입장에 불리한 사실과 위험도 숨기지 않기
- 모호한 질문에는 필요한 내용만 확인하고, 단순 질문에는 바로 답하기
- 실제로 도움이 될 때만 인사이트와 추가 질문 제시하기

이 실험의 목적은 멋진 답변 형식을 만드는 데 그치지 않습니다. **작은 지침 하나가 답변의 구조·근거·태도를 어떻게 바꾸는지 직접 확인하고**, 지침이 늘어날수록 항상 적용할 원칙, 상황별 코칭, 재사용 생산 능력, 프로젝트별 맥락을 구분해야 한다는 사실을 체감하는 것입니다. 이것이 Core·Learning·Capability·Work로 나누어 세팅하는 AI Learning OS의 구조적 필요성을 이해하는 가장 작은 출발점입니다.

적용 전후 비교 방법과 복사용 전체 지침은 [개인 맞춤설정·맞춤형 지침 실험 예제](docs/CUSTOM-INSTRUCTIONS-EXAMPLE.md)에서 확인할 수 있습니다.

## 구조

- **Core OS (필수)**: 정체성, 사고 원칙, 지식 판단, 응답 규칙, 라우팅
- **Learning OS (추천)**: 질문·사고·맥락·학습 코치
- **Capability OS (선택)**: 결과를 만드는 여섯 가지 재사용 생산 능력
- **Work OS (선택)**: 프로젝트·워크플로·역할 기반 실제 적용

각 파일은 하나의 책임만 가집니다. `thinking.md`는 항상 적용되는 사고 원칙이고, `thinking-coach.md`는 필요할 때 사용자의 사고를 확장하는 행동 규칙입니다.

## 답변에서 OS 작동 보기

복합 작업에서는 실제로 작동한 계층을 선택형 접두사로 구분합니다.

```text
[CORE · 판단] → [LEARNING · 학습] → [CAPABILITY · 활용 능력] → [WORK · 실행]
```

단순 질문에는 표시하지 않으며 네 계층을 모두 강제로 채우지 않습니다. 필요한 계층만 보여주므로 사용자는 적용 원칙, 학습 지점, 활용 능력과 실행 상태를 구분해 이해할 수 있습니다. 자세한 예시는 [전체 구조와 사용법](docs/GUIDE.md)에서 확인할 수 있습니다.

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
https://github.com/shlee21/AI-Learning-OS.git 에서 1단계 글로벌로 설치해줘
```

**2단계 — Core + Learning 코치(추천)**

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 글로벌로 설치해줘
```

**3단계 — Core + Learning + Work 전체 설치**

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 3단계 글로벌로 설치해줘
```

글로벌 설치는 모든 Codex 프로젝트에 공통 적용됩니다. 현재 프로젝트에만 적용하려면 다음처럼 범위를 명시하세요.

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 현재 프로젝트에 설치해줘
```

3단계 글로벌 설치에는 재사용 가능한 Capability Pack과 Project·Workflow·Role 템플릿만 포함됩니다. 실제 프로젝트의 목적, 대상, 결정사항과 Evidence는 각 프로젝트에 별도로 작성합니다. 기존 설치 폴더나 `AGENTS.md`는 자동으로 덮어쓰지 않고 확인·백업하도록 설계되어 있습니다.

글로벌 설치가 끝난 뒤 새 Codex 작업에서는 다음처럼 별칭을 사용할 수 있습니다.

```text
ALO 적용 상태를 확인해줘
```

```text
ALO를 GitHub 최신 버전으로 업데이트해줘
```

설치 메뉴에서 수준을 선택합니다.

1. Core — 기본 규칙만
2. Core + Learning — 질문력과 사고력 훈련(추천)
3. Full — Capability 조합과 프로젝트·워크플로·역할까지

설치 없이 이 저장소를 Codex 작업 폴더로 열고 [사용 안내](docs/GUIDE.md)를 따라도 됩니다.

## 작동 순서

OS 계층은 `Core → Learning → Capability → Work` 순서로 연결됩니다. 내부 작업 라우팅은 다음 순서를 따릅니다.

`Intent → Knowledge(Evidence + Reference) → Context → Capability → Reasoning → Response → Learning`

- **Evidence**는 사실성과 신뢰성을 정합니다.
- **Reference**는 결과가 향할 방향과 스타일을 정합니다.
- **Context**는 현재 프로젝트의 조건과 관계를 정합니다.

## 주요 문서

- [전체 구조와 사용법](docs/GUIDE.md)
- [개인 맞춤설정·맞춤형 지침 실험 예제](docs/CUSTOM-INSTRUCTIONS-EXAMPLE.md)
- [설계 철학](PHILOSOPHY.md)
- [중요 결정](DECISIONS.md)
- [설치 안내](install/README.md)
- [웹 안내 페이지](index.html)

## 예제

`examples/`에는 공무원 AX, 다문화센터, 스마트팜, 지역신문 프로젝트 예제가 있습니다. 예제는 정답이 아니라 Project Context 작성법을 보여주는 출발점입니다.

## 상태

현재 버전은 `v0.3.0`입니다. 문서 기반 규칙 세트이며 특정 모델이나 서비스에 종속되지 않습니다.

## License

MIT License
