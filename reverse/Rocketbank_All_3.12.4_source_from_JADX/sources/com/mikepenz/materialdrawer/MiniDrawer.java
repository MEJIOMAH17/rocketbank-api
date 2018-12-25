package com.mikepenz.materialdrawer;

import javax.inject.Provider;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.user.WidgetStorage;

public final class MiniDrawer implements Provider<WidgetStorage> {
    private final UserModule module;

    public MiniDrawer(UserModule userModule) {
        this.module = userModule;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return UserModule.provideWidgetStorage();
    }
}
