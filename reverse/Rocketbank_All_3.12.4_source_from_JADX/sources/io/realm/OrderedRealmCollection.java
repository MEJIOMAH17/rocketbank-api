package io.realm;

import java.util.List;

public interface OrderedRealmCollection<E extends RealmModel> extends RealmCollection<E>, List<E> {
}
