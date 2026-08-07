# Decisions

## D-001 — 네 계층

Core OS, Learning OS, Capability OS, Work OS로 구분한다. 처음부터 모든 기능을 강제하지 않는다.

## D-002 — Profile Pack을 만들지 않는다

사용자 선호는 Core의 style/response에, 질문 코칭은 Learning에 흡수한다. 별도 Profile 계층으로 책임을 중복하지 않는다.

## D-003 — Persona보다 Role

모델 발전에 따라 고정 페르소나는 제약이 될 수 있다. 전문 작업자는 역할, 역량, 워크플로, 도구로 정의하며 도메인 전문성은 Context로 제공한다.

## D-004 — Knowledge = Evidence + Reference

Evidence는 사실성, Reference는 방향성을 담당한다. 인터넷 자료만을 근거로 간주하지 않으며 공식 원문, 법령, 표준, 논문, 연구보고서, 전문가 인터뷰 등을 우선한다.

## D-005 — 원칙과 코칭 분리

Core의 `thinking.md`는 항상 적용되는 정책이다. Learning의 `thinking-coach.md`는 상황에 따라 관점을 확장하는 행동이다.

## D-006 — 단일 Router

Orchestrator가 Intent, 필요한 Context, Mode, Task, Agent 필요 여부를 판단한다.

## D-007 — 대화 종료 학습

Learning Coach는 Work OS나 Agent가 없어도 사용자가 요청하거나 세션 종료 신호가 있을 때 실행할 수 있다.

## D-008 — HANDOFF 제외

현재 버전에는 HANDOFF/SESSION 문서를 두지 않는다. 프로젝트 상태는 PROJECT, DECISIONS, ROADMAP, CHANGELOG로 관리한다.

## D-009 — ALO 공식 별칭

`ALO`를 AI Learning OS의 공식 별칭으로 사용한다. GitHub 주소는 최초 설치와 원본 식별에 사용하고, 글로벌 설치 시 `AGENTS.md`에 별칭 관계를 등록한다. 별칭만을 위해 별도의 글로벌 Skill은 만들지 않는다.

## D-010 — 결과물 유형보다 Capability 조합

프로젝트를 보고서·웹·영상처럼 결과물 종류별 Skill로 고정하지 않는다. Software Engineering, Technical Writing, Visual Communication, Research & Analysis, Workflow Automation, Service Design처럼 재사용 가능한 생산 능력을 조합한다. 프로젝트 전용 사실과 결정은 Work의 Project Context에 둔다.

## D-011 — Learning은 전체 작업을 관통한다

Learning을 결과 뒤의 선택형 요약으로 제한하지 않는다. 복합 작업에서는 질문, 중요한 인간 판단, 사이클 종료 시점에 체크포인트를 두어 질문력·사고확장력·암묵지의 명시지화를 결과 생산과 연결한다. 단순 사실 요청에는 이를 강제하지 않는다.

## D-012 — 인간의 판단을 추정하지 않는다

AI가 제안한 판단 기준과 사용자가 확인한 판단 기준을 구분한다. 사용자가 말하지 않은 선택·이유·검수 경험을 지어내지 않으며, 확인된 내용만 재사용 가능한 명시지로 확정한다.
