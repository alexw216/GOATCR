.class Lcom/gemini/play/MyListView2$4;
.super Landroid/os/Handler;
.source "MyListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView2;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/gemini/play/MyListView2$4;->this$0:Lcom/gemini/play/MyListView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyListView2$4;->this$0:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->hidePlayList()V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
