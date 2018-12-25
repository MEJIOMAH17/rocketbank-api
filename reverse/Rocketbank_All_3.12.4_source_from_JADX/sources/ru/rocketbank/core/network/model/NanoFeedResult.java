package ru.rocketbank.core.network.model;

import java.util.ArrayList;
import ru.rocketbank.core.model.dto.Pagination;

public class NanoFeedResult {
    public Feed feed;
    public Pagination pagination;
    public Feed top;

    public static class Feed {
        public ArrayList<FeedItem> list = new ArrayList();
    }
}
