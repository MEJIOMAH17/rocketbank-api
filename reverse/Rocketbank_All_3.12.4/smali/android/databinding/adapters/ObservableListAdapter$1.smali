.class Landroid/databinding/adapters/ObservableListAdapter$1;
.super Landroid/databinding/ObservableList$OnListChangedCallback;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/adapters/ObservableListAdapter;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/ObservableListAdapter;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-direct {p0}, Landroid/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/databinding/ObservableList;)V
    .locals 0

    .line 69
    iget-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p1}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(Landroid/databinding/ObservableList;II)V
    .locals 0

    .line 75
    iget-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p1}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(Landroid/databinding/ObservableList;II)V
    .locals 0

    .line 81
    iget-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p1}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(Landroid/databinding/ObservableList;III)V
    .locals 0

    .line 87
    iget-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p1}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(Landroid/databinding/ObservableList;II)V
    .locals 0

    .line 93
    iget-object p1, p0, Landroid/databinding/adapters/ObservableListAdapter$1;->this$0:Landroid/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p1}, Landroid/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
