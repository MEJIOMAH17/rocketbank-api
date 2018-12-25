.class Landroid/databinding/BaseObservableField$DependencyCallback;
.super Landroid/databinding/Observable$OnPropertyChangedCallback;
.source "BaseObservableField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/BaseObservableField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DependencyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/BaseObservableField;


# direct methods
.method constructor <init>(Landroid/databinding/BaseObservableField;)V
    .locals 0

    .line 21
    iput-object p1, p0, Landroid/databinding/BaseObservableField$DependencyCallback;->this$0:Landroid/databinding/BaseObservableField;

    invoke-direct {p0}, Landroid/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroid/databinding/Observable;I)V
    .locals 0

    .line 24
    iget-object p1, p0, Landroid/databinding/BaseObservableField$DependencyCallback;->this$0:Landroid/databinding/BaseObservableField;

    invoke-virtual {p1}, Landroid/databinding/BaseObservableField;->notifyChange()V

    return-void
.end method
