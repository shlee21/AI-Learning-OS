# Decisions

## D-001 — 세 계층

Core OS, Learning OS, Work OS로 구분한다. 처음부터 모든 기능을 강제하지 않는다.

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
