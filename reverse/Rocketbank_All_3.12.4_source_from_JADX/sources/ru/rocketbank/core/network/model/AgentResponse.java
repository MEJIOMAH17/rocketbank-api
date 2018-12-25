package ru.rocketbank.core.network.model;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Agent;

/* compiled from: AgentResponse.kt */
public final class AgentResponse {
    private Agent agent;

    public static /* bridge */ /* synthetic */ AgentResponse copy$default(AgentResponse agentResponse, Agent agent, int i, Object obj) {
        if ((i & 1) != 0) {
            agent = agentResponse.agent;
        }
        return agentResponse.copy(agent);
    }

    public final Agent component1() {
        return this.agent;
    }

    public final AgentResponse copy(Agent agent) {
        return new AgentResponse(agent);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AgentResponse) {
                if (Intrinsics.areEqual(this.agent, ((AgentResponse) obj).agent)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Agent agent = this.agent;
        return agent != null ? agent.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AgentResponse(agent=");
        stringBuilder.append(this.agent);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AgentResponse(Agent agent) {
        this.agent = agent;
    }

    public final Agent getAgent() {
        return this.agent;
    }

    public final void setAgent(Agent agent) {
        this.agent = agent;
    }
}
