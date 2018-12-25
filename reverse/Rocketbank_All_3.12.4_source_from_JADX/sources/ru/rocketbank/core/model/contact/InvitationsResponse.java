package ru.rocketbank.core.model.contact;

import java.util.List;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;

/* compiled from: InvitationsResponse.kt */
public final class InvitationsResponse extends GenericRequestResponseData {
    private List<InvitedFriend> invitations;

    public final List<InvitedFriend> getInvitations() {
        return this.invitations;
    }

    public final void setInvitations(List<InvitedFriend> list) {
        this.invitations = list;
    }
}
