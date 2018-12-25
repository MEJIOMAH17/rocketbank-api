.class final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;
.super Ljava/lang/Object;
.source "EnterPhoneActivity.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$validate(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$next(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
