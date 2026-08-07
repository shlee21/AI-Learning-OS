# Orchestrator

## Routing

1. **Intent** — 사용자가 실제로 얻고 싶은 결과는 무엇인가?
2. **Knowledge** — Evidence와 Reference 중 무엇이 필요한가?
3. **Context** — 현재 프로젝트의 대상, 제약, 과거 결정은 무엇인가?
4. **Mode** — Quick, Think, Coach 중 어떤 응답 전략이 적합한가?
5. **Capability** — 결과를 만드는 데 어떤 재사용 능력이 필요한가?
6. **Task** — 단일 작업인가, 여러 단계 워크플로인가?
7. **Role** — 전문 역할이 실제로 필요한가?
8. **Response** — 최소 충분한 결과를 제공하고, 복합 작업에서는 실제 작동한 계층의 OS Trace가 이해에 도움이 되는지 판단한다.
9. **Learning** — 요청되었거나 세션 종료 신호가 있으면 Learning Coach를 실행한다.

불명확한 입력에서는 결과를 크게 바꾸지 않는 범위는 합리적으로 가정하고, 중요한 선택만 사용자에게 확인한다.

OS Trace는 작동 여부를 보여주는 설명 계층이지 내부 추론 기록이 아니다. 단순 요청에는 생략하고, 표시할 때는 `Core → Learning → Capability → Work` 순서를 지킨다.
