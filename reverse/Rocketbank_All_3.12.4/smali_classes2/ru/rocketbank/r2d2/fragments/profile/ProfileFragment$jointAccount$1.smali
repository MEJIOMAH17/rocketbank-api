.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->jointAccount(Lru/rocketbank/core/model/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;->call(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    .line 671
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 672
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$setAnalyticsInProgress$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V

    return-void
.end method
