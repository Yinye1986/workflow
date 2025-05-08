import std.convert.*
import std.console.*

class Node {
    let data: Int64
    var next: Option<Node>
    
    init(data: Int64, next: Option<Node>) {
        this.data = data
        this.next = next
    }
}

class LinkedList {
    var head: Option<Node> = None
    
    // 头插法
    func addAtHead(value: Int64) {
        let newNode = Node(value, head)
        head = Some(newNode)
    }
    
    // 尾插法
    func addAtTail(value: Int64) {
        let newNode = Node(value, None)
        
        if (head.isNone()) {
            head = Some(newNode)
            return
        }
        
        var temp = head
        while (temp.getOrThrow().next.isSome()) {
            temp = temp.getOrThrow().next
        }
        temp.getOrThrow().next = Some(newNode)
    }
    
    // 头删法
    func delAtHead() {
        if (head.isNone()) { return }
        head = head.getOrThrow().next
    }
    
    // 尾删法
    func delAtTail() {
        if (head.isNone()) { return }
        
        var prev: Option<Node> = None
        var curr = head
        
        while (curr.getOrThrow().next.isSome()) {
            prev = curr
            curr = curr.getOrThrow().next
        }
        
        match (prev) {
            case None => head = None  // 单节点情况
            case Some(p) => p.next = None
        }
    }
    
    // 任意位置插入
    func insertAt(position: Int64, value: Int64) {
        if (position <= 0) { return }
        
        if (position == 1) {
            addAtHead(value)
            return
        }
        
        var temp = head
        var count: Int64 = 1
        
        while (count < position-1 && temp.isSome()) {
            temp = temp.getOrThrow().next
            count += 1
        }
        
        if (temp.isSome()) {
            let newNode = Node(value, temp.getOrThrow().next)
            temp.getOrThrow().next = Some(newNode)
        }
    }
    
    // 任意位置删除
    func deleteAt(position: Int64) {
        if (position < 1 || head.isNone()) { return }
        
        if (position == 1) {
            delAtHead()
            return
        }
        
        var prev: Option<Node> = None
        var curr = head
        var count: Int64 = 1
        
        while (count < position && curr.isSome()) {
            prev = curr
            curr = curr.getOrThrow().next
            count += 1
        }
        
        if (curr.isSome() && prev.isSome()) {
            prev.getOrThrow().next = curr.getOrThrow().next
        }
    }
    
    // 迭代反转
    func reverseByIterative() {
        var prev: Option<Node> = None
        var curr = head
        
        while (curr.isSome()) {
            let next = curr.getOrThrow().next
            curr.getOrThrow().next = prev
            prev = curr
            curr = next
        }
        head = prev
    }
    
    // 打印链表
    func printList() {
        var temp = head
        while (temp.isSome()) {
            Console.stdOut.write(temp.getOrThrow().data.toString() + " ")
            temp = temp.getOrThrow().next
        }
        Console.stdOut.writeln()
    }
    
    // 节点计数
    func countNodes(): Int64 {
        var count: Int64 = 0
        var temp = head
        
        while (temp.isSome()) {
            count += 1
            temp = temp.getOrThrow().next
        }
        return count
    }
}

main() {
    let list = LinkedList()
    var choice: Int64 = 0
    var isRunning = true
    
    while (isRunning) {
        Console.stdOut.writeln(" 1. 添加节点到链表头部")
        Console.stdOut.writeln(" 2. 添加节点到链表尾部")
        Console.stdOut.writeln(" 3. 指定位置插入节点")
        Console.stdOut.writeln(" 4. 删除头部节点")
        Console.stdOut.writeln(" 5. 删除尾部节点")
        Console.stdOut.writeln(" 6. 指定位置删除")
        Console.stdOut.writeln(" 7. 迭代法反转链表")
        Console.stdOut.writeln(" 8. 打印链表")
        Console.stdOut.writeln(" 9. 统计节点数")
        Console.stdOut.writeln("10. 退出")
        
        Console.stdOut.write("请选择操作: ")
        choice = Int64.parse(Console.stdIn.readln().getOrThrow())
        
        match (choice) {
            case 1 =>
                Console.stdOut.write("请输入数值: ")
                let value = Int64.parse(Console.stdIn.readln().getOrThrow())
                list.addAtHead(value)
            case 2 =>
                Console.stdOut.write("请输入数值: ")
                let value = Int64.parse(Console.stdIn.readln().getOrThrow())
                list.addAtTail(value)
            case 3 =>
                Console.stdOut.write("请输入数值: ")
                let value = Int64.parse(Console.stdIn.readln().getOrThrow())
                Console.stdOut.write("请输入位置: ")
                let pos = Int64.parse(Console.stdIn.readln().getOrThrow())
                list.insertAt(pos, value)
            case 4 => list.delAtHead()
            case 5 => list.delAtTail()
            case 6 =>
                Console.stdOut.write("请输入删除位置: ")
                let pos = Int64.parse(Console.stdIn.readln().getOrThrow())
                list.deleteAt(pos)
            case 7 => list.reverseByIterative()
            case 8 =>
                Console.stdOut.write("当前链表: ")
                list.printList()
            case 9 => Console.stdOut.writeln("节点数量: " + list.countNodes().toString())
            case 10 => isRunning = false
            case _ => Console.stdOut.writeln("无效输入")
        }
    }
}
