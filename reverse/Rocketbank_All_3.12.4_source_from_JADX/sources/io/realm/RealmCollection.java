package io.realm;

import java.util.Collection;

public interface RealmCollection<E extends RealmModel> extends Collection<E> {
    boolean isLoaded();
}
