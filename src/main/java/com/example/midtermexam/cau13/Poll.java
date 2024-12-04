package com.example.midtermexam.cau13;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Poll {
    private String question;  // Câu hỏi bình chọn
    private List<String> options;  // Các lựa chọn
    private List<Integer> votes;  // Số lượt bình chọn cho từng lựa chọn

    public Poll(String question, List<String> options) {
        this.question = question;
        this.options = options;
        // Khởi tạo danh sách bình chọn ban đầu cho các lựa chọn, mặc định là 0 lượt bình chọn
        this.votes = new ArrayList<>(Collections.nCopies(options.size(), 0));
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public List<String> getOptions() {
        return options;
    }

    public void setOptions(List<String> options) {
        this.options = options;
    }

    public List<Integer> getVotes() {
        return votes;
    }

    public void setVotes(List<Integer> votes) {
        this.votes = votes;
    }

    public void vote(int optionIndex) {
        if (optionIndex >= 0 && optionIndex < votes.size()) {
            votes.set(optionIndex, votes.get(optionIndex) + 1);
        }
    }

    @Override
    public String toString() {
        return "Poll{" +
                "question='" + question + '\'' +
                ", options=" + options +
                ", votes=" + votes +
                '}';
    }
}
