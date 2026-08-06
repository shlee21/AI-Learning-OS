# Changelog

## 0.2.1 — 2026-08-07

- Windows PowerShell 5.1에서 BOM 없는 UTF-8 한글 `AGENTS.md`가 깨지는 문제 수정
- 기존 `AGENTS.md`를 엄격한 UTF-8로 검증한 뒤 읽도록 변경
- UTF-8이 아닌 기존 파일은 변경하지 않고 설치를 중단하도록 보호
- 생성·병합 파일을 BOM 없는 UTF-8로 일관되게 저장

## 0.2.0 — 2026-08-07

- 프로젝트 설치와 글로벌 설치 범위 선택 추가
- `-Level`과 `-Scope`를 사용한 비대화형 설치 지원
- 기존 `AGENTS.md` 백업 및 안전한 연결 블록 추가
- 3단계 글로벌 설치에서 Work 템플릿과 프로젝트별 Context 분리
- Codex 대화창용 글로벌·프로젝트 설치 문장 추가

## 0.1.0 — 2026-08-07

- AI Learning OS 최초 공개 구조 작성
- Core/Learning/Work 선택형 설치 구성
- Evidence와 Reference 분리
- Persona 대신 Role 채택
- 질문·사고·맥락·학습 코치 추가
