package ru.rocketbank.core.model.transfers.friend;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;

public class FriendTransfersResponseData extends GenericRequestResponseData {
    private Object status;
    private FriendTransfersResponseUrls urls;

    public FriendTransfersResponseUrls getUrls() {
        return this.urls;
    }

    public void setUrls(FriendTransfersResponseUrls friendTransfersResponseUrls) {
        this.urls = friendTransfersResponseUrls;
    }
}
