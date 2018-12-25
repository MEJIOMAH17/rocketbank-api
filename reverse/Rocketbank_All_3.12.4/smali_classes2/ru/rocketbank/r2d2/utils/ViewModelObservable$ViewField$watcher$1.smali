.class public final Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "ViewModelObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;-><init>(Landroid/databinding/BaseObservable;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;->this$0:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;->this$0:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;->this$0:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->access$getLazyValidObservable$p(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)Lrx/subjects/PublishSubject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;->this$0:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    return-void
.end method
