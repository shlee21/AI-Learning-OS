# 설치 안내

AI Learning OS는 설치 단계와 적용 범위를 각각 선택한다.

## 설치 단계

| 단계 | 설치 내용 | 권장 사용자 |
|---|---|---|
| 1단계 | Core 규칙 6개 | 기본 협업 원칙만 필요한 사용자 |
| 2단계 | Core + Learning Coach | 질문·사고·맥락·학습 훈련이 필요한 사용자 |
| 3단계 | Core + Learning + Work 템플릿 | 프로젝트·워크플로·역할 설계까지 필요한 사용자 |

3단계를 글로벌로 설치해도 실제 프로젝트의 목적, 대상, 결정사항, 제약은 글로벌에 저장하지 않는다. 글로벌에는 재사용 가능한 Work 템플릿만 두고 프로젝트별 Context는 각 프로젝트에서 작성한다.

## 설치 범위

### 프로젝트 설치

현재 프로젝트에만 적용한다. 처음 시험하거나 프로젝트별 규칙이 필요할 때 적합하다.

```text
현재 프로젝트\.ai-learning-os\
현재 프로젝트\AGENTS.md
```

### 글로벌 설치

모든 Codex 프로젝트에 공통으로 적용한다. 사용자의 기본 사고·응답·학습 원칙에 적합하다.

```text
%USERPROFILE%\.codex\ai-learning-os\
%USERPROFILE%\.codex\AGENTS.md
```

`CODEX_HOME`이 설정되어 있으면 `%USERPROFILE%\.codex` 대신 해당 위치를 사용한다.

## Codex 대화창에서 설치 요청하기

다음 문장 중 원하는 단계와 범위를 골라 Codex 대화창에 그대로 입력한다.

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 1단계 글로벌로 설치해줘
```

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 글로벌로 설치해줘
```

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 3단계 글로벌로 설치해줘
```

프로젝트에만 적용하려면 `글로벌로` 대신 `현재 프로젝트에`라고 입력한다.

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 현재 프로젝트에 설치해줘
```

## PowerShell 설치

대화형 메뉴:

```powershell
powershell -ExecutionPolicy Bypass -File install/setup.ps1
```

단계와 범위를 한 번에 지정:

```powershell
powershell -ExecutionPolicy Bypass -File install/setup.ps1 -Level 2 -Scope Global
```

```powershell
powershell -ExecutionPolicy Bypass -File install/setup.ps1 -Level 3 -Scope Project
```

## 기존 설정 보호

- 설치 대상 폴더가 이미 있으면 덮어쓰지 않고 중단한다.
- 기존 `AGENTS.md`가 있으면 타임스탬프가 포함된 백업을 만든 뒤 전용 마커 블록을 추가한다.
- 기존 `AGENTS.md`는 엄격한 UTF-8로 읽고, 한글을 보존하는 BOM 없는 UTF-8로 저장한다.
- 기존 파일이 유효한 UTF-8이 아니면 파일을 변경하지 않고 설치를 중단한다.
- AI Learning OS 연결 블록이 이미 있으면 중복 설치를 중단한다.
- 설치 중 연결에 실패하면 새로 만든 규칙 폴더를 제거해 불완전한 설치를 남기지 않는다.

## 수동 설치

- Core: `core/` 복사
- Learning: `learning/` 추가 복사
- Work: `work/`의 템플릿 추가 복사

파일 복사만으로 끝내지 말고 적용 범위에 맞는 `AGENTS.md`에서 설치 문서를 읽도록 연결해야 한다.
