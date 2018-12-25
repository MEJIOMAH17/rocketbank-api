.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$1;
.super Ljava/lang/Object;
.source "OperationTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->changeMode()V

    return-void
.end method
