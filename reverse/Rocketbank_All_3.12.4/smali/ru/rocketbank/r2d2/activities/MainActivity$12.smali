.class Lru/rocketbank/r2d2/activities/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->updateSupportBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 940
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1000(Lru/rocketbank/r2d2/activities/MainActivity;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lru/rocketbank/core/model/UserModel;->setUnreadMessages(I)V

    .line 941
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1100(Lru/rocketbank/r2d2/activities/MainActivity;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withoutBadge()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 942
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1200(Lru/rocketbank/r2d2/activities/MainActivity;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1100(Lru/rocketbank/r2d2/activities/MainActivity;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    .line 943
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$12;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showSupport()V

    const/4 p1, 0x1

    return p1
.end method
