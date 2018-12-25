.class public final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;
.super Ljava/lang/Object;
.source "EnterPhoneActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnNextButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$validate(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$OnNextButtonClickListener;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$next(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V

    :cond_0
    return-void
.end method
