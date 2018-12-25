.class final Lru/rocketbank/r2d2/activities/StatusActivity$onFail$1;
.super Ljava/lang/Object;
.source "StatusActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;->onFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/StatusActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->finish()V

    return-void
.end method
