.class final Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;
.super Ljava/lang/Object;
.source "NotificationDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/NotificationDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/NotificationDialog;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$isActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z

    move-result p1

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {p2}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$getCheckedIsActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 172
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;->this$0:Lru/rocketbank/r2d2/widgets/NotificationDialog;

    invoke-static {p2}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$getCheckedIsActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z

    move-result p2

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->access$sendRequest(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V

    :cond_0
    return-void
.end method
