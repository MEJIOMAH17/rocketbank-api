.class public abstract Lru/rocketbank/r2d2/registration/GenericFormFragment;
.super Lru/rocketbank/r2d2/registration/FormFragment;
.source "GenericFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model::",
        "Landroid/os/Parcelable;",
        ":",
        "Lru/rocketbank/core/events/EventHelper$IEvent;",
        "API:",
        "Ljava/lang/Object;",
        ">",
        "Lru/rocketbank/r2d2/registration/FormFragment<",
        "TModel;TAPI;>;"
    }
.end annotation


# instance fields
.field public button:Landroid/widget/Button;

.field public buttonBottom:Landroid/widget/Button;

.field public image:Landroid/widget/ImageView;

.field public textViewHintBottom:Landroid/widget/TextView;

.field public textViewHintTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/FormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
.end method

.method protected initView()V
    .locals 6

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/GenericFormFragment;->getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getBottomHintText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getBottomHintTextRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getTopHintTextRes()I

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->textViewHintTop:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getTopHintTextRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->isButtonVisible()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 65
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->button:Landroid/widget/Button;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getButtonTextRes()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resource not found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    :goto_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->isBottomButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getButtonBottomTextRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    :goto_2
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/registration/FormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903a2

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->textViewHintTop:Landroid/widget/TextView;

    const p2, 0x7f0901c7

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->image:Landroid/widget/ImageView;

    const p2, 0x7f0903a1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->textViewHintBottom:Landroid/widget/TextView;

    const p2, 0x7f09008c

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->button:Landroid/widget/Button;

    const p2, 0x7f09008e

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment;->buttonBottom:Landroid/widget/Button;

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/GenericFormFragment;->initView()V

    return-void
.end method
