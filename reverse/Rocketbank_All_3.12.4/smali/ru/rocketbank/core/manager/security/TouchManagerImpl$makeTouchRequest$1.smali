.class public final Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;
.super Lrx/Subscriber;
.source "TouchManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/security/TouchManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/TouchResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchManagerImpl.kt\nru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1\n*L\n1#1,167:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/security/TouchManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->Companion:Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;

    .line 1161
    invoke-static {}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch error"

    .line 130
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->access$getTouchIdInProgress$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->access$getTouchListener$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    if-eqz v0, :cond_3

    .line 134
    instance-of v1, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v1, :cond_1

    .line 136
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v1

    const v2, 0x7f11018d

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 138
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0441\u0435\u0442\u0438"

    :cond_2
    :goto_0
    const/16 v1, 0xfac

    const-string v2, "message"

    .line 142
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationError(ILjava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .line 124
    check-cast p1, Lru/rocketbank/core/model/TouchResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2147
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->access$getTouchIdInProgress$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2148
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    iget-object v1, p1, Lru/rocketbank/core/model/TouchResponse;->device:Lru/rocketbank/core/model/TouchResponse$DeviceData;

    iget-object v1, v1, Lru/rocketbank/core/model/TouchResponse$DeviceData;->touch_id_token:Ljava/lang/String;

    const-string v2, "response.device.touch_id_token"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->setToken(Ljava/lang/String;)V

    .line 2149
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;->this$0:Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->access$getTouchListener$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    if-eqz v0, :cond_0

    .line 2150
    iget-object p1, p1, Lru/rocketbank/core/model/TouchResponse;->device:Lru/rocketbank/core/model/TouchResponse$DeviceData;

    iget-object p1, p1, Lru/rocketbank/core/model/TouchResponse$DeviceData;->touch_id_token:Ljava/lang/String;

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationSucceeded(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
