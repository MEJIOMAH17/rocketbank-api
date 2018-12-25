.class public final Lru/rocketbank/r2d2/RocketApplication$onCreate$1;
.super Ljava/lang/Object;
.source "RocketApplication.kt"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/RocketApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/RocketApplication;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/RocketApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$onCreate$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWidgetDataUpdate()V
    .locals 1

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$onCreate$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication;->widgetUpdate()V

    return-void
.end method
