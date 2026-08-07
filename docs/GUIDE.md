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
| Capability | packs | 결과를 만드는 재사용 가능한 생산 능력 |
| Work | templates/projects/workflows/roles | 프로젝트 Context와 실행 구조 |

## 네 계층

1. **Core OS** — 항상 적용하는 판단 원칙
2. **Learning OS** — 필요할 때 사용자의 질문·사고·맥락·학습을 돕는 코칭
3. **Capability OS** — Software Engineering, Technical Writing, Visual Communication, Research & Analysis, Workflow Automation, Service Design
4. **Work OS** — 이번 프로젝트의 Context, Workflow, Role과 Capability 조합

Capability는 결과물 이름이 아니다. 보고서 프로젝트도 조사, 기술 문서 작성, 시각 커뮤니케이션을 함께 사용할 수 있다.

## 결과와 성장을 연결하는 학습 사이클

ALO는 결과 생산과 사람의 성장을 별도 단계로 보지 않는다.

```text
질문 점검
→ 알아야 할 개념과 필요성 이해
→ 인간의 판단 기준과 선택
→ Capability + Work로 결과 생산
→ 사람이 사실·품질·위험 검수
→ 판단과 검수 경험을 명시지화
→ 더 나은 다음 질문
```

- **질문력** — 원래 질문의 적합성, 숨은 전제, 대안 질문과 각 방향의 결과를 비교한다.
- **사고확장력** — 모르는 개념을 간단한 설명, 필요성, 현재 문제와의 관계, 판단 변화 순서로 연결한다.
- **러닝** — 사람이 선택·거부·검수한 경험을 재사용할 판단 기준과 다음 질문으로 표현한다.

Learning은 결과 뒤에 형식적으로 붙는 요약이 아니다. 시작의 Question Checkpoint, 중요한 선택의 Human Judgment Checkpoint, 완료 후 Learning Checkpoint로 전체 작업을 관통한다. 단순 사실 확인에는 이 사이클을 강제하지 않는다.

## 답변에서 작동 구조 보기

복합 작업에서는 실제로 작동한 계층만 선택형 OS Trace로 표시할 수 있다. 이 표시는 내부 추론을 공개하는 것이 아니라 적용 원칙, 학습 지점, 선택한 능력, 실행 상태를 구분해 사용자가 결과를 체계적으로 이해하도록 돕는다.

```text
[CORE · 판단]
Capability는 결과물 종류가 아니라 재사용 가능한 생산 능력으로 분류한다.

[LEARNING · 학습]
이번 프로젝트에만 필요한 정보와 다른 프로젝트에서도 반복할 방법을 구분한다.

[CAPABILITY · 활용 능력]
Research & Analysis · Technical Writing

[WORK · 실행]
구조 구현 완료 · 설치 검증 완료
```

- 단순 질문에는 표시하지 않는다.
- 네 계층을 모두 강제하지 않는다.
- 표시할 때는 `Core → Learning → Capability → Work` 순서를 따른다.
- 구현 완료, 구조 검사, 실제 동작 검증을 구분한다.

## 추천 수준

- **입문자**: Core + Question Coach
- **일반 사용자**: Core + Learning 전체
- **실무자**: Core + Learning + 필요한 Capability + Project Template
- **고급 사용자**: Full + 필요한 Capability/Role/Workflow만 선택

## 대화 예시

사용자: `지역축제 계획을 검토해줘. Coach 모드로.`

AI는 목적과 성공 기준 중 결과를 바꿀 누락을 먼저 짚고, Evidence와 Reference를 구분한 다음 핵심 위험과 개선안을 제시한다. 대화 마지막에 `/learning`을 입력하면 질문·사고·맥락의 변화를 정리한다.

## 프로젝트에 적용

1. `work/templates/project-template.md`를 `work/projects/<project-name>/project.md`로 복사한다.
2. 대상, 제약, 결정사항, 성공 기준을 채운다.
3. 결과를 만드는 데 필요한 Capability Pack만 선택해 Capability Map에 기록한다.
4. 조직별 호칭이나 표현은 해당 Context에 적는다.
5. 복합 작업일 때만 Workflow와 Role을 추가한다.

## 중복 방지 규칙

- 항상 적용되는 것은 Core에 둔다.
- 사용자 성장에 상황별로 개입하는 것은 Learning에 둔다.
- 여러 프로젝트에서 반복되는 생산 방법은 Capability에 둔다.
- 특정 프로젝트에만 필요한 사실은 Project Context에 둔다.
- 여러 단계 실행은 Workflow, 전문 책임은 Role에 둔다.
