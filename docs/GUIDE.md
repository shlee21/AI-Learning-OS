# 전체 구조와 사용법

## 왜 존재하는가

AI Learning OS는 질문을 잘 쓰는 기술을 넘어, 대화를 거듭할수록 사용자가 무엇을 모르고 어떤 맥락이 필요한지 알아채게 하는 학습 구조다.

## 파일별 책임

| 영역 | 파일 | 존재 이유 |
|---|---|---|
| Core | identity | 협업자의 정체성과 인간 판단 존중 |
| Core | thinking | 항상 지키는 사고 정책 |
| Core | knowledge | Evidence와 Reference 판단 |
| Core | response | 결과 전달 규칙 |
| Core | orchestrator | 필요한 규칙과 역할 선택 |
| Learning | question-coach | 질문의 목적·범위·성공 기준 보완 |
| Learning | thinking-coach | 상황별 사고 확장 |
| Learning | context-coach | 개념을 관계와 맥락으로 연결 |
| Learning | learning-coach | 세션에서 얻은 학습을 회고 |
| Work | templates | 프로젝트·워크플로·역할 확장 |

## 추천 수준

- **입문자**: Core + Question Coach
- **일반 사용자**: Core + Learning 전체
- **실무자**: Core + Learning + Project Template
- **고급 사용자**: Full + 필요한 Role/Workflow만 추가

## 대화 예시

사용자: `지역축제 계획을 검토해줘. Coach 모드로.`

AI는 목적과 성공 기준 중 결과를 바꿀 누락을 먼저 짚고, Evidence와 Reference를 구분한 다음 핵심 위험과 개선안을 제시한다. 대화 마지막에 `/learning`을 입력하면 질문·사고·맥락의 변화를 정리한다.

## 프로젝트에 적용

1. `work/project-template.md`를 프로젝트 폴더에 복사한다.
2. 대상, 제약, 결정사항, 성공 기준을 채운다.
3. 조직별 호칭이나 표현은 해당 Context에 적는다.
4. 복합 작업일 때만 Workflow와 Role을 추가한다.

## 중복 방지 규칙

- 항상 적용되는 것은 Core에 둔다.
- 사용자 성장에 상황별로 개입하는 것은 Learning에 둔다.
- 특정 프로젝트에만 필요한 사실은 Project Context에 둔다.
- 여러 단계 실행은 Workflow, 전문 책임은 Role에 둔다.
