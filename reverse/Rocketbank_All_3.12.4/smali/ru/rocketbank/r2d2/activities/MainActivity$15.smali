.class Lru/rocketbank/r2d2/activities/MainActivity$15;
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

.field final synthetic val$account:Lru/rocketbank/core/model/AccountModel;

.field final synthetic val$fragmentTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/AccountModel;Ljava/lang/String;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$account:Lru/rocketbank/core/model/AccountModel;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$fragmentTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 1183
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$account:Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$account:Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/AccountModel;->getPlasticToken()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$account:Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {p3}, Lru/rocketbank/core/model/AccountModel;->getExtracts()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    move-result-object p1

    .line 1184
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p3, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->val$fragmentTag:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1400(Lru/rocketbank/r2d2/activities/MainActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$15;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1200(Lru/rocketbank/r2d2/activities/MainActivity;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    const/4 p1, 0x1

    return p1
.end method
