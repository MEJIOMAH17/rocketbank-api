.class Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;
.super Ljava/lang/Object;
.source "FillFormRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;->this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/CharSequence;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;->this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->access$000(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;->call(Ljava/lang/CharSequence;)V

    return-void
.end method
