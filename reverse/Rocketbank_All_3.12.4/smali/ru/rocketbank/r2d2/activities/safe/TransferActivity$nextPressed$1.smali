.class final Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$1;
.super Ljava/lang/Object;
.source "TransferActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;->nextPressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$sendMoney(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    return-void
.end method
