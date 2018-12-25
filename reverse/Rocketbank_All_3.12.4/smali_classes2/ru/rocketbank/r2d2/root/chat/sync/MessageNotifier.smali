.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;
.super Ljava/lang/Object;
.source "MessageNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageNotifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageNotifier.kt\nru/rocketbank/r2d2/root/chat/sync/MessageNotifier\n*L\n1#1,185:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final CONNECT:I = 0x3

.field private static final CREATED:I = 0x1

.field public static final Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

.field private static final EVENT_NEW_MESSAGE:Ljava/lang/String; = "client-new-message"

.field private static final EVENT_READ_BY_ADMIN:Ljava/lang/String; = "client-read-by-admin"

.field private static final EVENT_TYPING:Ljava/lang/String; = "client-typing"

.field private static final NONE:I = 0x0

.field private static final STOPPED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MessageNotifier"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final authorization$delegate:Lkotlin/Lazy;

.field private final connectionEventListener:Lcom/pusher/client/connection/ConnectionEventListener;

.field private currentChannelName:Ljava/lang/String;

.field private final headerManager$delegate:Lkotlin/Lazy;

.field private notificationListener:Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

.field private final presenceChannelEventListener:Lcom/pusher/client/channel/PresenceChannelEventListener;

.field private pusher:Lcom/pusher/client/Pusher;

.field private subscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "authorization"

    const-string v4, "getAuthorization()Lru/rocketbank/core/user/Authorization;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "headerManager"

    const-string v4, "getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    const-string v1, "Subscriptions.empty()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->subscription:Lrx/Subscription;

    .line 27
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const v1, 0x7f11039e

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->apiKey:Ljava/lang/String;

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$authorization$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$authorization$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->authorization$delegate:Lkotlin/Lazy;

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$headerManager$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$headerManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->headerManager$delegate:Lkotlin/Lazy;

    .line 95
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V

    check-cast v0, Lcom/pusher/client/connection/ConnectionEventListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->connectionEventListener:Lcom/pusher/client/connection/ConnectionEventListener;

    .line 126
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V

    check-cast v0, Lcom/pusher/client/channel/PresenceChannelEventListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->presenceChannelEventListener:Lcom/pusher/client/channel/PresenceChannelEventListener;

    return-void
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCONNECT$cp()I
    .locals 1

    .line 21
    sget v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->CONNECT:I

    return v0
.end method

.method public static final synthetic access$getCREATED$cp()I
    .locals 1

    .line 21
    sget v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->CREATED:I

    return v0
.end method

.method public static final synthetic access$getChannelName$p(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getChannelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEVENT_NEW_MESSAGE$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->EVENT_NEW_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEVENT_TYPING$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->EVENT_TYPING:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNONE$cp()I
    .locals 1

    .line 21
    sget v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->NONE:I

    return v0
.end method

.method public static final synthetic access$getSTOPPED$cp()I
    .locals 1

    .line 21
    sget v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->STOPPED:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$refresh(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->refresh()V

    return-void
.end method

.method private final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->authorization$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method private final getChannelName()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "presence-user-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getPusherToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->headerManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    return-object v0
.end method

.method private final refresh()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 7

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->initializePusher()V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->pusher:Lcom/pusher/client/Pusher;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->connectionEventListener:Lcom/pusher/client/connection/ConnectionEventListener;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/pusher/client/connection/ConnectionState;

    sget-object v4, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 70
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->presenceChannelEventListener:Lcom/pusher/client/channel/PresenceChannelEventListener;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 72
    sget-object v6, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->EVENT_NEW_MESSAGE:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 73
    sget-object v5, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->EVENT_TYPING:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    .line 74
    sget-object v5, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->EVENT_READ_BY_ADMIN:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 70
    invoke-virtual {v0, v1, v3, v4}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    .line 75
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->currentChannelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->TAG:Ljava/lang/String;

    const-string v2, "subscribe error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->pusher:Lcom/pusher/client/Pusher;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->disconnect()V

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->currentChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pusher/client/Pusher;->unsubscribe(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final getNotificationListener()Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->notificationListener:Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    return-object v0
.end method

.method public final initializePusher()V
    .locals 3

    .line 54
    new-instance v0, Lcom/pusher/client/util/HttpAuthorizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "messages/pusher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/manager/HeaderManager;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/HttpAuthorizer;->setHeaders(Ljava/util/Map;)V

    .line 57
    new-instance v1, Lcom/pusher/client/PusherOptions;

    invoke-direct {v1}, Lcom/pusher/client/PusherOptions;-><init>()V

    check-cast v0, Lcom/pusher/client/Authorizer;

    invoke-virtual {v1, v0}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    const-string v1, "pusherOptions"

    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pusher/client/PusherOptions;->setEncrypted(Z)Lcom/pusher/client/PusherOptions;

    .line 60
    new-instance v1, Lcom/pusher/client/Pusher;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->pusher:Lcom/pusher/client/Pusher;

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    const-string v1, "authorization.user.subsc\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->subscription:Lrx/Subscription;

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->disconnect()V

    return-void
.end method

.method public final setNotificationListener(Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->notificationListener:Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    return-void
.end method
