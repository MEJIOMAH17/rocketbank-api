.class final Lru/rocketbank/r2d2/activities/ChangePhoneActivity$showRetryErrorSnackbarMessage$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->showRetryErrorSnackbarMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$showRetryErrorSnackbarMessage$1;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$showRetryErrorSnackbarMessage$1;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->access$getEventBus$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/events/RetryEvent;

    invoke-direct {v0}, Lru/rocketbank/core/events/RetryEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
