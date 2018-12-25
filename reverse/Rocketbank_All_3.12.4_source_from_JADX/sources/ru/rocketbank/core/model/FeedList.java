package ru.rocketbank.core.model;

import java.util.List;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.network.model.FeedItem;

public class FeedList {
    public List<FeedItem> feed;
    public Pagination pagination;
    public List<FeedItem> top;
}
