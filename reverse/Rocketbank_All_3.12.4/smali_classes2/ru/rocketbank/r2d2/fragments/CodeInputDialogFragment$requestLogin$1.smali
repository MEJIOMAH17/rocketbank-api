.class public final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;
.super Lrx/Subscriber;
.source "CodeInputDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->requestLogin(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/LoginResponseData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodeInputDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodeInputDialogFragment.kt\nru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1\n*L\n1#1,482:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isTouch:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->$isTouch:Z

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_0

    .line 294
    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericResponse()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_TRUSTED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$dropAllSession(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->$isTouch:Z

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$handleLoginError(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p1, Lru/rocketbank/core/model/LoginResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->onNext(Lru/rocketbank/core/model/LoginResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/LoginResponseData;)V
    .locals 2

    const-string v0, "loginResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;->$isTouch:Z

    invoke-static {v0, v1, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$handleLogin(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;ZLru/rocketbank/core/model/LoginResponseData;)V

    return-void
.end method
