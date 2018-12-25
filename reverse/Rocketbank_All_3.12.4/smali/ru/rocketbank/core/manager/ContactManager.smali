.class public final Lru/rocketbank/core/manager/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactManager.kt\nru/rocketbank/core/manager/ContactManager\n*L\n1#1,344:1\n*E\n"
.end annotation


# instance fields
.field private final CONTACTS_DIFFERENCE:Ljava/lang/String;

.field private final CONTACTS_HASH:Ljava/lang/String;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private contactsDifference:I

.field private contactsFile:Ljava/io/File;

.field private contactsHash:Ljava/lang/String;

.field private final contactsSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lru/rocketbank/core/events/ContactsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private final rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/RocketShortcutManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketAPI"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketShortcutManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    iput-object p3, p0, Lru/rocketbank/core/manager/ContactManager;->authorization:Lru/rocketbank/core/user/Authorization;

    iput-object p4, p0, Lru/rocketbank/core/manager/ContactManager;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    const-string p1, "contacts_difference"

    .line 41
    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_DIFFERENCE:Ljava/lang/String;

    const-string p1, "contacts_hash"

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_HASH:Ljava/lang/String;

    .line 44
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    .line 50
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    const-string p2, "EventBus.getDefault()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 57
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    iget-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object p4, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_DIFFERENCE:Ljava/lang/String;

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/manager/ContactManager;->contactsDifference:I

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_HASH:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->contactsHash:Ljava/lang/String;

    .line 64
    iget-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p2}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object p2

    .line 65
    new-instance p3, Lru/rocketbank/core/manager/ContactManager$1;

    invoke-direct {p3, p0}, Lru/rocketbank/core/manager/ContactManager$1;-><init>(Lru/rocketbank/core/manager/ContactManager;)V

    check-cast p3, Lrx/functions/Action1;

    .line 67
    sget-object p4, Lru/rocketbank/core/manager/ContactManager$2;->INSTANCE:Lru/rocketbank/core/manager/ContactManager$2;

    check-cast p4, Lrx/functions/Action1;

    .line 65
    invoke-virtual {p2, p3, p4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    .line 72
    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_contacts"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lru/rocketbank/core/manager/ContactManager;->contactsFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$getContactsSubject$p(Lru/rocketbank/core/manager/ContactManager;)Lrx/subjects/BehaviorSubject;
    .locals 0

    .line 37
    iget-object p0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic access$handleReloadedContacts(Lru/rocketbank/core/manager/ContactManager;Ljava/util/Map;)V
    .locals 9

    .line 1195
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object p0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    new-instance p1, Lru/rocketbank/core/events/ContactsEvent;

    invoke-direct {p1}, Lru/rocketbank/core/events/ContactsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    new-instance v1, Lru/rocketbank/core/model/contact/SyncContacts;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lru/rocketbank/core/model/contact/SyncContacts;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->syncContacts(Lru/rocketbank/core/model/contact/SyncContacts;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->single()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/ContactsSyncResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1202
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContactsSyncResponse;->getContacts()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContactsSyncResponse;->getContactsHash()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 1207
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContactsSyncResponse;->getContacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/contact/ServerContact;

    .line 1210
    new-instance v5, Lru/rocketbank/core/model/contact/Contact;

    invoke-direct {v5}, Lru/rocketbank/core/model/contact/Contact;-><init>()V

    .line 1211
    invoke-virtual {v5, v4}, Lru/rocketbank/core/model/contact/Contact;->set(Lru/rocketbank/core/model/contact/ServerContact;)V

    .line 1212
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual {v4}, Lru/rocketbank/core/model/contact/ServerContact;->getIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1215
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/model/contact/DeviceContact;

    if-nez v6, :cond_4

    goto :goto_1

    .line 1217
    :cond_4
    invoke-virtual {v5}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v6}, Lru/rocketbank/core/model/contact/DeviceContact;->getEmails()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1218
    invoke-virtual {v5}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v6}, Lru/rocketbank/core/model/contact/DeviceContact;->getPhones()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1219
    invoke-virtual {v6}, Lru/rocketbank/core/model/contact/DeviceContact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lru/rocketbank/core/model/contact/Contact;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 1223
    :cond_7
    check-cast v2, Ljava/util/List;

    sget-object p1, Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;->INSTANCE:Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1225
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lru/rocketbank/core/manager/ContactManager;->onContactsLoaded(Ljava/util/List;Ljava/util/List;)V

    .line 1227
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->contactsFile:Ljava/io/File;

    new-instance v3, Lru/rocketbank/core/model/contact/Contacts;

    invoke-direct {v3, v1, v2}, Lru/rocketbank/core/model/contact/Contacts;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1, v3}, Lru/rocketbank/core/manager/ContactManager;->write(Ljava/io/File;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1228
    invoke-direct {p0}, Lru/rocketbank/core/manager/ContactManager;->getContactsDifference()I

    move-result p1

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ContactsSyncResponse;->getContactsHash()Ljava/lang/String;

    move-result-object v0

    .line 1312
    iput p1, p0, Lru/rocketbank/core/manager/ContactManager;->contactsDifference:I

    .line 1313
    iput-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsHash:Ljava/lang/String;

    .line 1315
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_DIFFERENCE:Ljava/lang/String;

    .line 1337
    iget-object v1, p0, Lru/rocketbank/core/manager/ContactManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1316
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->CONTACTS_HASH:Ljava/lang/String;

    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsHash:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2333
    :cond_8
    iget-object p0, p0, Lru/rocketbank/core/manager/ContactManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    return-void

    .line 1203
    :cond_a
    :goto_2
    iget-object p0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    new-instance p1, Lru/rocketbank/core/events/ContactsEvent;

    new-instance v0, Lru/rocketbank/core/events/ErrorEvent;

    invoke-direct {v0, v1}, Lru/rocketbank/core/events/ErrorEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Lru/rocketbank/core/events/ErrorEvent;)V

    invoke-virtual {p0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onContactsLoaded(Lru/rocketbank/core/manager/ContactManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/manager/ContactManager;->onContactsLoaded(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$reloadContactHash(Lru/rocketbank/core/manager/ContactManager;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DataManager"

    const-string v1, "reloadContactHash"

    .line 3233
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 3236
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_0

    .line 3241
    iget-object p0, p0, Lru/rocketbank/core/manager/ContactManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p1, Lru/rocketbank/core/model/RequestPermissionEvent;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 3246
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/core/manager/ContactManager;->getContactsDifference()I

    move-result v0

    .line 3247
    iget v2, p0, Lru/rocketbank/core/manager/ContactManager;->contactsDifference:I

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsHash:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3248
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/core/manager/ContactManager;->reloadContacts()V

    :cond_2
    return-void
.end method

.method public static final synthetic access$reloadContacts(Lru/rocketbank/core/manager/ContactManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lru/rocketbank/core/manager/ContactManager;->reloadContacts()V

    return-void
.end method

.method private final getContactData(Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lru/rocketbank/core/model/contact/DeviceContact;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    .line 254
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const-string v0, "contact_id"

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "display_name"

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    .line 257
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 269
    :cond_1
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const-string v1, "contact_id"

    .line 270
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "display_name"

    .line 271
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 273
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 276
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v3, Lru/rocketbank/core/model/contact/DeviceContact;

    goto :goto_1

    .line 279
    :cond_3
    new-instance v5, Lru/rocketbank/core/model/contact/DeviceContact;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lru/rocketbank/core/model/contact/DeviceContact;-><init>(JLjava/lang/String;)V

    .line 280
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    .line 282
    :goto_1
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lru/rocketbank/core/model/contact/DeviceContact;->add(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private final getContactsDifference()I
    .locals 8

    .line 289
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 294
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "version"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 292
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "version"

    .line 300
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 301
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v7, v2

    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method private final onContactsLoaded(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$1;-><init>(Lru/rocketbank/core/manager/ContactManager;Ljava/util/List;Ljava/util/List;)V

    check-cast v1, Lrx/functions/Action1;

    .line 147
    new-instance p1, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$2;

    invoke-direct {p1, p0}, Lru/rocketbank/core/manager/ContactManager$onContactsLoaded$2;-><init>(Lru/rocketbank/core/manager/ContactManager;)V

    check-cast p1, Lrx/functions/Action1;

    .line 108
    invoke-virtual {v0, v1, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private static read(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "+TMODE",
            "L;",
            ">;)TMODE",
            "L;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/StringDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/StringDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final reloadContacts()V
    .locals 4

    .line 175
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lru/rocketbank/core/events/ContactsEvent;

    new-instance v2, Lru/rocketbank/core/events/InProgressEvent;

    invoke-direct {v2}, Lru/rocketbank/core/events/InProgressEvent;-><init>()V

    invoke-direct {v1, v2}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Lru/rocketbank/core/events/InProgressEvent;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 1154
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1156
    check-cast v0, Ljava/util/Map;

    const-string v1, "data1"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "ContactsContract.CommonDataKinds.Email.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lru/rocketbank/core/manager/ContactManager;->getContactData(Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "data1"

    .line 1158
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "ContactsContract.CommonDataKinds.Phone.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lru/rocketbank/core/manager/ContactManager;->getContactData(Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 177
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 178
    new-instance v1, Lru/rocketbank/core/manager/ContactManager$reloadContacts$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/ContactManager$reloadContacts$1;-><init>(Lru/rocketbank/core/manager/ContactManager;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private static write(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 3

    .line 320
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/StringDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/StringDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 323
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 324
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getContactsObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/events/ContactsEvent;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    const-string v1, "contactsSubject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

.method public final getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    return-object v0
.end method

.method public final loadContacts(Z)V
    .locals 4

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lru/rocketbank/core/model/RequestPermissionEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->contactsSubject:Lrx/subjects/BehaviorSubject;

    new-instance v0, Lru/rocketbank/core/events/ContactsEvent;

    new-instance v1, Lru/rocketbank/core/events/InProgressEvent;

    invoke-direct {v1}, Lru/rocketbank/core/events/InProgressEvent;-><init>()V

    invoke-direct {v0, v1}, Lru/rocketbank/core/events/ContactsEvent;-><init>(Lru/rocketbank/core/events/InProgressEvent;)V

    invoke-virtual {p1, v0}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->contactsFile:Ljava/io/File;

    const-class v0, Lru/rocketbank/core/model/contact/Contacts;

    invoke-static {p1, v0}, Lru/rocketbank/core/manager/ContactManager;->read(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    .line 97
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 98
    new-instance v0, Lru/rocketbank/core/manager/ContactManager$loadContacts$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/ContactManager$loadContacts$1;-><init>(Lru/rocketbank/core/manager/ContactManager;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/ResultPermissionEvent;)V
    .locals 3

    const-string v0, "resultPermissionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getGrantResults()[I

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    aget p1, p1, v1

    if-nez p1, :cond_2

    .line 77
    iget-object p1, p0, Lru/rocketbank/core/manager/ContactManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1084
    invoke-virtual {p0, v1}, Lru/rocketbank/core/manager/ContactManager;->loadContacts(Z)V

    :cond_2
    return-void
.end method
