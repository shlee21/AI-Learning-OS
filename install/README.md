# 설치 안내

## Windows 선택 설치

저장소를 내려받은 뒤 다음을 실행한다.

```powershell
powershell -ExecutionPolicy Bypass -File install/setup.ps1
```

결과는 현재 폴더의 `.ai-learning-os/`에 생성된다. 기존 폴더가 있으면 덮어쓰지 않고 중단한다.

## Codex 대화창에서 설치 요청하기

설치할 프로젝트 폴더를 Codex에서 연 다음, 원하는 단계의 문장을 대화창에 그대로 입력한다.

### 1단계: Core

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 1단계 설치해줘
```

정체성, 사고, 지식, 응답, 라우팅 기본 규칙을 설치한다.

### 2단계: Core + Learning

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 2단계 설치해줘
```

Core와 질문·사고·맥락·러닝 코치를 설치한다. 일반 사용자에게 권장한다.

### 3단계: Full

```text
https://github.com/shlee21/AI-Learning-OS.git 에서 3단계 설치해줘
```

Core, Learning, 프로젝트·워크플로·역할 템플릿을 모두 설치한다.

Codex는 설치 전에 기존 `.ai-learning-os` 폴더가 있는지 확인해야 한다. 기존 설정이 있으면 자동으로 덮어쓰지 않고 사용자에게 병합 또는 새 설치 위치를 확인한다.

## 수동 설치

- Core: `core/` 복사
- Learning: `learning/` 추가 복사
- Work: `work/` 추가 복사

사용하는 AI 도구의 프로젝트 지침 파일에서 설치 폴더의 문서를 읽도록 안내한다. 제품별 자동 인식 방식은 서로 다르므로, 설치 완료와 실제 자동 적용은 구분해 확인한다.
