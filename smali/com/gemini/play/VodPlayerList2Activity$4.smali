.class Lcom/gemini/play/VodPlayerList2Activity$4;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v1, p3}, Lcom/gemini/play/VodPlayerList2Activity;->access$202(Lcom/gemini/play/VodPlayerList2Activity;I)I

    .line 152
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerList2Activity;->access$100(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyGridView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v1, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerList2Activity;->access$300(Lcom/gemini/play/VodPlayerList2Activity;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_2

    const/4 v1, 0x5

    if-lt p3, v1, :cond_2

    .line 156
    sget-object v1, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/gemini/play/VODplayer;->psize:I

    div-int v0, v1, v2

    .line 157
    .local v0, "page":I
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;II)V

    .line 160
    .end local v0    # "page":I
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/gemini/play/MySimpleAdapterVodView;->setSeclection(I)V

    .line 161
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$4;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerList2Activity;->access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MySimpleAdapterVodView;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
