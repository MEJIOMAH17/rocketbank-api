.class public abstract Lru/rocketbank/core/manager/DataManagerImpl;
.super Ljava/lang/Object;
.source "DataManagerImpl.java"


# instance fields
.field private contactsFile:Ljava/io/File;

.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field public isResetCodeToken:Z

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

.field private providersFile:Ljava/io/File;

.field private providersTime:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Lru/rocketbank/core/network/api/ProvidersApi;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->context:Landroid/content/Context;

    .line 32
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->eventBus:Lde/greenrobot/event/EventBus;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->isResetCodeToken:Z

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    .line 55
    iget-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lru/rocketbank/core/manager/DataManagerImpl;->contactsFile:Ljava/io/File;

    .line 61
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_providers192"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersFile:Ljava/io/File;

    .line 63
    iget-object v1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 64
    iget-object v1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/manager/DataManagerImpl;I)V
    .locals 1

    .line 1167
    iput p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersTime:I

    const-string v0, "providers_time_87"

    .line 1195
    iget-object p0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 1196
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1197
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1198
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic access$100$39f958a3(Lru/rocketbank/core/manager/DataManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/DataManagerImpl;->loadProviders(I)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/core/manager/DataManagerImpl;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/core/manager/DataManagerImpl;)Ljava/io/File;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400$7e9cec54(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lru/rocketbank/core/manager/DataManagerImpl;->read(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500$382e8ff7(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lru/rocketbank/core/manager/DataManagerImpl;->write(Ljava/io/File;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadProviders(I)V
    .locals 3

    const-string v0, "DataManager"

    const-string v1, "loadProviders with tine"

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/ProvidersApi;->providersAll()Lrx/Observable;

    move-result-object v0

    .line 117
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 118
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/DataManagerImpl$7;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/DataManagerImpl$7;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;I)V

    .line 119
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/manager/DataManagerImpl$6;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/DataManagerImpl$6;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    .line 125
    invoke-virtual {p1, v0}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/manager/DataManagerImpl$4;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/DataManagerImpl$4;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    new-instance v1, Lru/rocketbank/core/manager/DataManagerImpl$5;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/DataManagerImpl$5;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    .line 131
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private static read(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    const/4 v0, 0x0

    .line 177
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 1

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getProvider(J)Lru/rocketbank/core/model/provider/Provider;
    .locals 6

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/provider/Provider;

    .line 158
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public final loadProviders()V
    .locals 3

    const-string v0, "DataManager"

    const-string v1, "loadProviders"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersFile:Ljava/io/File;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 87
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/DataManagerImpl$3;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/DataManagerImpl$3;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    .line 88
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/DataManagerImpl$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/DataManagerImpl$1;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    new-instance v2, Lru/rocketbank/core/manager/DataManagerImpl$2;

    invoke-direct {v2, p0}, Lru/rocketbank/core/manager/DataManagerImpl$2;-><init>(Lru/rocketbank/core/manager/DataManagerImpl;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public onEvent(Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 0

    .line 146
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ProvidersResponse;->getProviders()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providers:Ljava/util/List;

    return-void
.end method

.method public final update(I)V
    .locals 3

    const-string v0, "DataManager"

    const-string v1, "update "

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v0, p0, Lru/rocketbank/core/manager/DataManagerImpl;->providersTime:I

    if-eq p1, v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/DataManagerImpl;->loadProviders(I)V

    :cond_0
    return-void
.end method
