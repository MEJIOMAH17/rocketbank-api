.class Lru/rocketbank/r2d2/activities/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->createMoneyMenu(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;

.field final synthetic val$issue:Lru/rocketbank/core/model/IssueModel;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/IssueModel;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$16;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$16;->val$issue:Lru/rocketbank/core/model/IssueModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 1

    .line 1227
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$16;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$16;->val$issue:Lru/rocketbank/core/model/IssueModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/IssueModel;->getPin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startPin(Landroid/content/Context;ZLru/rocketbank/core/model/dto/ChangePin;Z)V

    return p3
.end method
