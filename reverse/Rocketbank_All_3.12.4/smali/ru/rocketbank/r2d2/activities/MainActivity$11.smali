.class Lru/rocketbank/r2d2/activities/MainActivity$11;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->configureDrawerLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .line 846
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$11;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 856
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$11;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 850
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$11;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 851
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$11;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method
